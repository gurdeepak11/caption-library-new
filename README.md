# Caption Library — Database Edition

This is a fresh replacement project for the old Gemini/API-key version.

## What changed

- No Gemini/OpenAI generation API is used.
- Captions, countries, sports, teams and players are designed to come from the database.
- Three free uses are enforced server-side per anonymous browser ID.
- After 3 uses the UI shows a subscription screen.
- One generated result can contain the same title for all social platforms.
- No tone selector.
- No separate social-media title variants.

## Database

The project uses PostgreSQL through Neon/Vercel Postgres-compatible `DATABASE_URL`.

1. Create a PostgreSQL database.
2. Run `schema.sql`.
3. Add `DATABASE_URL` as a Vercel environment variable.
4. Deploy this project.

## Important

The subscription endpoint is a safe placeholder. Real payments should be connected only after choosing a payment provider and adding its server-side credentials. Do not put payment secrets in browser JavaScript.
