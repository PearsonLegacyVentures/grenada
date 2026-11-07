# Tranquilitas — Grenada

Dedicated enquiry-first destination website for Grenada.

## Canonical
https://grenada.tranquilitasspa.com/

## Cloudflare Pages
Framework: none. Build command: none. Output directory: repository root. Production branch: main.

## Booking policy
WhatsApp and telephone are prominent. Enquiries require a selected treatment, guests, exact property, date and time. At least 6 hours in America/Grenada; request hours 10 AM–7 PM local time. Prices and therapist credentials must be confirmed before any booking. No verified local walk-in storefront is asserted.

## Email channel
Set **BOOKING_FROM_EMAIL** to `bookings@bahamasmassages.com` as a non-secret text variable on the Cloudflare Pages project. Add `RESEND_API_KEY` as a secret after verifying sender domain with Resend. The email endpoint returns a clear error until configured. Recipients are fixed in the server handler and are not environment variables.

## Pricing policy
For future US/UK international price proposals, the user's requested internal benchmark is **current verified Nassau service base × 1.15**, rounded appropriately in local currency after current FX, staffing, licensing, tax, travel, and margin checks. **Do not publish unverified international rates.** This build is inquiry-only.

## Authenticity
Only genuine Tranquilitas massage images are used to depict massage. The destination image is from https://unsplash.com/photos/coastal-town-with-colorful-buildings-on-a-peninsula-e4ZB90dskjs (Unsplash) and is credited. It does not purport to show a Tranquilitas appointment in Grenada.

## Routes
/
/services/
/areas/
/about/
/contact/
/faq/
/request/
/privacy/
/swedish-massage/
/deep-tissue-massage/
/couples-massage/
/hotel-massage/
/villa-massage/
/group-wellness/
/areas/grand-anse/
/areas/st-georges/
/areas/lance-aux-epines/
/areas/morne-rouge/
/areas/true-blue/
/journal/
/journal/hotel-and-villa-massage-guide/
/journal/couples-wellness-planning-guide/
/journal/private-massage-guest-checklist/
