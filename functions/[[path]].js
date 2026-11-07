const MARKETS={
 "grenada.tranquilitasspa.com":"grenada",
 "belize.tranquilitasspa.com":"belize",
 "bonaire.tranquilitasspa.com":"bonaire",
 "jamaica.tranquilitasspa.com":"jamaica",
 "bermuda.tranquilitasspa.com":"bermuda",
 "miami.tranquilitasspa.com":"miami",
 "nyc.tranquilitasspa.com":"nyc",
 "la.tranquilitasspa.com":"la",
 "uk.tranquilitasspa.com":"uk",
 "stmartin.tranquilitasspa.com":"stmartin"
};
export async function onRequest(context){
 const incoming=new URL(context.request.url),host=incoming.hostname.toLowerCase(),preview=host.endsWith(".pages.dev");
 let market=MARKETS[host],path=incoming.pathname;
 if(preview){
   market="grenada";
   const match=path.match(/^\/__preview\/(grenada|belize|bonaire|jamaica|bermuda|miami|nyc|la|uk|stmartin)(\/.*)?$/);
   if(match){market=match[1];path=match[2]||"/"}
 }
 if(!market)return new Response("Unknown market",{status:421,headers:{"Cache-Control":"no-store","X-Robots-Tag":"noindex"}});
 if(path.startsWith("/sites/")||path.startsWith("/__preview/"))return new Response("Not found",{status:404,headers:{"Cache-Control":"no-store","X-Robots-Tag":"noindex"}});
 const target=new URL(context.request.url);
 target.pathname="/sites/"+market+(path.startsWith("/")?path:"/"+path);
 const fetched=await context.env.ASSETS.fetch(new Request(target,context.request));
 if(!preview)return fetched;
 const headers=new Headers(fetched.headers);headers.set("X-Robots-Tag","noindex, nofollow");
 return new Response(fetched.body,{status:fetched.status,statusText:fetched.statusText,headers});
}
