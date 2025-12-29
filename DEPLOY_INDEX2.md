# Deploy index2.html to Vercel

## Quick Deploy via Dashboard

1. Go to https://vercel.com and sign in
2. Click "Add New Project"
3. Import your Git repository OR drag and drop the project folder
4. Configure:
   - **Framework Preset**: Other
   - **Root Directory**: `.` (root directory)
   - **Build Command**: Leave empty
   - **Output Directory**: Leave empty
   - **Install Command**: Leave empty
5. Click "Deploy"

## Deploy via CLI (if Node.js is installed)

```bash
# Install Vercel CLI
npm install -g vercel

# Login
vercel login

# Deploy
vercel

# Deploy to production
vercel --prod
```

## Files Ready for Deployment

- ✅ `index2.html` - Your Hello World page
- ✅ `vercel.json` - Configuration to serve index2.html at root URL

## After Deployment

Your site will be available at:
- `https://your-project-name.vercel.app/` (serves index2.html)
- `https://your-project-name.vercel.app/index2.html` (direct access)

