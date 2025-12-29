# Fix Vercel "Root Directory does not exist" Error

## The Problem
Vercel is looking for a `frontend` directory but can't find it. This happens when the Root Directory setting doesn't match your project structure.

## Solution: Two Options

### Option 1: Remove Root Directory Setting (Recommended)

1. Go to Vercel Dashboard → Your Project → **Settings** → **General**
2. Scroll to **Build & Development Settings**
3. **Clear/Remove** the "Root Directory" field (leave it empty)
4. Update these settings:
   - **Framework Preset**: Other
   - **Root Directory**: (leave empty)
   - **Build Command**: (leave empty)
   - **Output Directory**: (leave empty)
   - **Install Command**: (leave empty)
5. Click **Save**

The root `vercel.json` will handle routing to `/frontend/preview.html`

### Option 2: Set Root Directory to Empty and Use Frontend vercel.json

1. Go to Vercel Dashboard → Your Project → **Settings** → **General**
2. Scroll to **Build & Development Settings**
3. Update these settings:
   - **Framework Preset**: Other
   - **Root Directory**: `frontend` (keep this)
   - **Build Command**: (leave empty)
   - **Output Directory**: `.` (or leave empty)
   - **Install Command**: (leave empty)
4. Click **Save**

The `frontend/vercel.json` will handle routing within the frontend directory.

## After Updating Settings

1. Go to **Deployments** tab
2. Click **"..."** on the latest deployment
3. Click **"Redeploy"**

Or push a new commit:
```bash
cd /Users/enriqueguasp/Desktop/prediction-market-mvp
git add vercel.json frontend/vercel.json
git commit -m "Fix Vercel root directory configuration"
git push origin main
```

## Verify

After redeploy, check:
- `https://pollit-two.vercel.app/` should show your app
- `https://pollit-two.vercel.app/preview.html` should also work

## If Still Not Working

Try Option 1 first (remove Root Directory). The root `vercel.json` will route everything to the frontend folder.

