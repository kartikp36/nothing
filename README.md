# drop the username, just password.

> "This password is taken, please choose another one" would be hilarious if you think about it.

Well, I thought about it. And here we are.


[![Netlify Status](https://api.netlify.com/api/v1/badges/a65b7173-10ab-48ee-b7a1-2dcb2620ecb9/deploy-status)](https://app.netlify.com/projects/welcome-to-nothing/deploys)
## What is this?

A groundbreaking web application born from [a silly tweet](https://x.com/kartikp36/status/1983986578298130688) that asked the important question: what if we just... dropped the username in login?

Now you can finally claim your password. Own absolutely nothing. Live your best minimalist detachment life knowing at least something belongs to you.

## The Vision

Traditional login pages are so demanding. Username? Password? Security questions? Captcha? Exhausting.

**Welcome to Nothing** strips away the bloat:

- ❌ No username
- ❌ No email
- ❌ No confirmation
- ✅ Just pure, unadulterated password

## Quick Start

1. **Supabase Setup** (because even nothing needs a database)

   - Create a free project at [supabase.com](https://supabase.com)
   - Run `supabase_setup.sql` in the SQL Editor
   - Grab your URL and anon key from Settings → API

2. **Environment Setup**

```bash
   cp .env.example .env
   # Edit .env with your Supabase credentials
```

3. **Run This Beautiful Slop**

```bash
   npm install
   npm start
```

4. Visit `http://localhost:3000` and start claiming passwords like it's 1999.

## Deployment

Because your friends need to see this masterpiece:

Set `SUPABASE_URL` and `SUPABASE_ANON_KEY` as environment variables:

- **Vercel**: Run `vercel`, add env vars in dashboard
- **Railway/Render**: Connect repo, configure env vars, deploy
- **Heroku**: `heroku config:set SUPABASE_URL=... SUPABASE_ANON_KEY=...`
- **Netlify**: Sure, why not

## How It Works

1. You enter a password
2. We check if someone already claimed it
3. If yes: `"This password is taken, please choose another one"`
4. If no: Congrats! You now own a password. And nothing else.

## ⚠️ Important Disclaimers

- **Passwords are stored in plain text** for simplicity
- **Don't use real passwords** (seriously, don't be that person)
- **This is satire** (or is it?)
- **You gain nothing from this** (it's literally called "Welcome to Nothing")

## The Philosophy

In a world obsessed with usernames, one developer asked: "Why?"

The answer? There is no answer. There is only password.
But seriously, this can also be a silly reminder of how complicated login can get: stronger passwords, CAPTCHAs, usernames, email verifications—until there’s a data leak, of course.

## Contributing

Found a bug? That's a feature.  
Want to add a username field? You've missed the point entirely.  
Have a better pun? Open a PR, I guess. We can be friends.

## License

MIT - Because even absurdist art should be free

---

**Built with ❤️ and confusion**  
_From tweet to reality in record time_

© 2025 Nothing Corp. All passwords reserved. All meaning, questionable.
