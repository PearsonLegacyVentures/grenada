# Tranquilitas Grenada — independent Cloudflare Pages deployment

Source repository: `PearsonLegacyVentures/grenada`.

## Production

- Cloudflare Pages project: `grenada`
- Production domain: https://grenada.tranquilitasspa.com/
- Individual preview and production host: https://grenada-87p.pages.dev/
- Production branch: `main`
- Build command: none (static HTML)
- Output directory: repository root (`.`)
- Deployments: automatic from this repository, independent of other country and city sites

## Booking requests

The site is enquiry-first. A request must identify service, party size, property and local date/time, subject to a six-hour lead time. Enquiries are not confirmations and no unverified local prices are shown. WhatsApp is available as an alternative.

`BOOKING_FROM_EMAIL` is set to `bookings@bahamasmassages.com`. Email delivery through `functions/api/enquiry.js` requires `RESEND_API_KEY`, which must be configured as a secret after sender verification. Notification recipients are fixed to `info@massagebahamas.com` and `amar@massagebahamas.com`. Do not store credentials in GitHub.

## November 8, 2026 hosting separation

This Pages project previously routed content for ten sites as a temporary workaround for the Cloudflare Pages project limit. The other nine markets now have their own GitHub-linked Pages projects:

| Market | Pages project | GitHub repository |
| --- | --- | --- |
| Belize | `belize` | `PearsonLegacyVentures/belize` |
| Bermuda | `bermuda` | `PearsonLegacyVentures/bermuda` |
| Bonaire | `bonaire` | `PearsonLegacyVentures/bonaire` |
| Jamaica | `jamaica` | `PearsonLegacyVentures/jamaica` |
| Miami | `miami` | `PearsonLegacyVentures/miami` |
| New York City | `nyc` | `PearsonLegacyVentures/nyc` |
| Los Angeles | `la` | `PearsonLegacyVentures/la` |
| London | `uk` | `PearsonLegacyVentures/UK` |
| St. Martin / Sint Maarten | `stmartin` | `PearsonLegacyVentures/smx` |

The old `scripts/build-shared.sh` is retained in Git history only as a migration reference; it is no longer used by the live Cloudflare Pages project. Do not re-enable shared routing without reviewing all domain assignments first.

## Published online bookings — 2026-11-09
USD rates for 60/90 minutes: Swedish $127/$170, Deep Tissue $140/$180, Beach $155/$230, Couples $240/$360 for the pair. All eight Book links go to the exact Setmore service, with booking time selection there. Confirm a minimum six-hour advance window in Setmore policy. No local walk-in branch is advertised.
