# Deployment Guide - Vercel

This guide walks you through deploying PolliT to Vercel.

## Prerequisites

1. **Vercel Account**: Sign up at [vercel.com](https://vercel.com)
2. **GitHub Account**: Your code should be on GitHub (see README for GitHub setup)
3. **Backend URL**: Your backend API should be deployed separately (see Backend Deployment section)

## Quick Deploy (Recommended)

### Option 1: Deploy via Vercel Dashboard (Easiest)

1. **Push your code to GitHub** (if not already done):
   ```bash
   git add .
   git commit -m "Prepare for Vercel deployment"
   git push origin main
   ```

2. **Go to Vercel Dashboard**:
   - Visit [vercel.com/new](https://vercel.com/new)
   - Click "Import Project"
   - Select your GitHub repository

3. **Configure Project**:
   - **Framework Preset**: Other (or Static Site)
   - **Root Directory**: `frontend`
   - **Build Command**: Leave empty (or `echo "No build needed"`)
   - **Output Directory**: Leave empty (or `.`)
   - **Install Command**: Leave empty

4. **Environment Variables** (if needed):
   - Add any environment variables your app needs
   - For now, the app uses hardcoded backend URL `http://localhost:3001`
   - You'll need to update this after deploying your backend

5. **Deploy**:
   - Click "Deploy"
   - Wait for deployment to complete
   - Your app will be live at `your-project.vercel.app`

### Option 2: Deploy via Vercel CLI

1. **Install Vercel CLI**:
   ```bash
   npm i -g vercel
   ```

2. **Login to Vercel**:
   ```bash
   vercel login
   ```

3. **Navigate to frontend directory**:
   ```bash
   cd frontend
   ```

4. **Deploy**:
   ```bash
   vercel
   ```
   - Follow the prompts
   - Select "Other" for framework
   - Leave build settings empty

5. **For production deployment**:
   ```bash
   vercel --prod
   ```

## Backend Deployment

**Important**: Your backend (`backend/server.js`) needs to be deployed separately. Vercel is for frontend only.

### Backend Options:

1. **Railway** (Recommended for Node.js):
   - Visit [railway.app](https://railway.app)
   - Connect GitHub repo
   - Select `backend` directory
   - Set environment variables
   - Deploy

2. **Render**:
   - Visit [render.com](https://render.com)
   - Create new Web Service
   - Connect GitHub repo
   - Root Directory: `backend`
   - Build Command: `npm install`
   - Start Command: `node server.js`

3. **Heroku**:
   - Install Heroku CLI
   - `cd backend`
   - `heroku create your-app-name`
   - `git push heroku main`

### Update Frontend Backend URL

After deploying your backend, update the frontend to use the production backend URL:

1. In `frontend/preview.html`, find all instances of `http://localhost:3001`
2. Replace with your deployed backend URL (e.g., `https://your-backend.railway.app`)

Or use environment variables:
- Add `NEXT_PUBLIC_API_URL` in Vercel dashboard
- Update code to use: `process.env.NEXT_PUBLIC_API_URL || 'http://localhost:3001'`

## Post-Deployment Checklist

- [ ] Frontend deployed to Vercel
- [ ] Backend deployed (Railway/Render/Heroku)
- [ ] Backend URL updated in frontend
- [ ] Environment variables configured
- [ ] Test wallet connections
- [ ] Test market creation
- [ ] Test trading functionality
- [ ] Check console for errors

## Custom Domain (Optional)

1. Go to Vercel Dashboard → Your Project → Settings → Domains
2. Add your custom domain
3. Follow DNS configuration instructions

## Troubleshooting

### Build Fails
- Check that `frontend` directory is set as root
- Ensure no build command is needed (static HTML)

### Backend Connection Errors
- Verify backend URL is correct
- Check CORS settings on backend
- Ensure backend is publicly accessible

### Wallet Connection Issues
- Verify HTTPS is enabled (required for wallet connections)
- Check browser console for errors
- Ensure WalletConnect project ID is set (if using)

## Notes

- The current MVP uses `preview.html` as a single-file application
- For production, consider migrating to the Next.js setup in `frontend/pages/`
- Static assets (favicon, etc.) should be in `frontend/` directory
