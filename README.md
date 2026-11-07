# Tranquilitas Grenada — shared Cloudflare Pages hosting

This repository is the source of Grenada content and provides a shared deployment layer for the other eight destination sites. The Cloudflare account has reached the Pages project limit, so nine country/city domains share one Pages project while their content remains in separate GitHub repositories.

## Cloudflare Pages

Project: grenada
Build command: `bash scripts/build-shared.sh`
Output directory: `dist`
Production branch: `main`

The build script fetches the latest `main` of each public market repository, copies static site files under `dist/sites/{market}`, and a Pages Functions host router serves the appropriate content for each custom hostname. `functions/api/enquiry.js` uses the hostname to set the correct market and timezone.

## Market repositories and domains

- Grenada: `PearsonLegacyVentures/grenada` → https://grenada.tranquilitasspa.com/
- Belize: `PearsonLegacyVentures/belize` → https://belize.tranquilitasspa.com/
- Bonaire: `PearsonLegacyVentures/bonaire` → https://bonaire.tranquilitasspa.com/
- Jamaica: `PearsonLegacyVentures/jamaica` → https://jamaica.tranquilitasspa.com/
- Bermuda: `PearsonLegacyVentures/bermuda` → https://bermuda.tranquilitasspa.com/
- Miami: `PearsonLegacyVentures/miami` → https://miami.tranquilitasspa.com/
- New York City: `PearsonLegacyVentures/nyc` → https://nyc.tranquilitasspa.com/
- Los Angeles: `PearsonLegacyVentures/la` → https://la.tranquilitasspa.com/
- London: `PearsonLegacyVentures/UK` → https://uk.tranquilitasspa.com/

## Publishing caveat

**Pushing to a market repository does not automatically trigger the shared Grenada Pages build.** After changes to an individual market, redeploy the `grenada` Cloudflare Pages project to pick up the latest source. The individual repositories remain editable separately. Do not claim a market is live until that shared deployment succeeds.

## Contact, pricing, and authentication

All markets are enquiry-first and show no unverified local prices or instant booking confirmations. `BOOKING_FROM_EMAIL` should be `bookings@bahamasmassages.com`, with `RESEND_API_KEY` added privately when the sending domain has been verified. Email recipients are fixed to `info@massagebahamas.com` and `amar@massagebahamas.com`. The customer-facing form defaults to WhatsApp.

## Testing

Before domains are active, preview an individual site at `https://grenada-87p.pages.dev/__preview/<market>/`. Preview responses have `X-Robots-Tag: noindex`. Domain custom CNAMEs must first be registered in Cloudflare Pages and then added in Wix DNS.
