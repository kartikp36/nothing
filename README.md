# Welcome to Nothing

A single-page web app where users can "claim" passwords (just for fun).

## Setup Instructions

### 1. Create a Supabase Project

1. Go to [supabase.com](https://supabase.com) and sign up/login
2. Click "New Project"
3. Fill in your project details and wait for it to initialize

### 2. Create the Database Table

1. In your Supabase dashboard, go to the **SQL Editor**
2. Open the file `supabase_setup.sql` from this project
3. Copy the entire SQL code and paste it into the SQL Editor
4. Click "Run" to execute the SQL

This will create:
- A `claimed_passwords` table with unique password constraint
- An index for faster lookups
- Row Level Security policies for public access

### 3. Set Up Environment Variables

1. In your Supabase dashboard, go to **Settings** → **API**
2. Copy your **Project URL** (looks like: `https://xxxxx.supabase.co`)
3. Copy your **anon/public key** (looks like: `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...`)
4. Create a `.env` file in the project root (copy from `.env.example`):
   ```bash
   cp .env.example .env
   ```
5. Edit `.env` and add your credentials:
   ```
   SUPABASE_URL=https://xxxxx.supabase.co
   SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
   ```

**IMPORTANT:** Never commit the `.env` file to git. It's already in `.gitignore`.

### 4. Install Dependencies and Run

1. Install Node.js dependencies:
   ```bash
   npm install
   ```

2. Start the server:
   ```bash
   npm start
   ```

3. Open your browser to `http://localhost:3000`

### 5. Deploy

#### Option A: Heroku
1. Create a Heroku app
2. Set environment variables in Heroku dashboard or CLI:
   ```bash
   heroku config:set SUPABASE_URL=your_url
   heroku config:set SUPABASE_ANON_KEY=your_key
   ```
3. Deploy: `git push heroku main`

#### Option B: Vercel
1. Install Vercel CLI: `npm i -g vercel`
2. Run `vercel` in the project directory
3. Add environment variables in Vercel dashboard (Settings → Environment Variables)
4. Redeploy

#### Option C: Railway/Render
1. Connect your GitHub repository
2. Add environment variables in the dashboard
3. Deploy automatically

#### Option D: VPS/Self-hosted
1. Upload files to your server
2. Create `.env` file with your credentials
3. Run `npm install && npm start`
4. Use PM2 or systemd to keep it running

## How It Works

1. User enters a password (minimum 3 characters)
2. App tries to insert it into the Supabase database
3. If the password already exists, Supabase returns a unique constraint error
4. If successful, the password is stored and the user gets a success message

## Security Note

This app stores passwords in **plain text** for demonstration purposes only. The disclaimer warns users not to use real passwords. This is intentionally a fun, silly project and should not be used to store actual sensitive data.

## Files

- `index.html` - The complete single-page app (HTML, CSS, and JavaScript)
- `server.js` - Express server that serves the app and provides config API
- `package.json` - Node.js dependencies
- `supabase_setup.sql` - SQL to create the database table
- `.env.example` - Environment variable template
- `.gitignore` - Git ignore file (includes .env)
- `README.md` - This file

## License

© 2025 Nothing Corp. All passwords reserved.
