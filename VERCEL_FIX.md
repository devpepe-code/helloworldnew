# Fix Vercel 404 Error

## The Problem
Vercel is showing a 404 because it doesn't know which file to serve. Since `preview.html` is your main file, we need to configure Vercel properly.

## Solution

### Step 1: Update Vercel Project Settings

1. Go to your Vercel dashboard: https://vercel.com/dashboard
2. Click on your project (`pollit`)
3. Go to **Settings** → **General**
4. Scroll down to **Build & Development Settings**
5. Update these settings:
   - **Framework Preset**: Other
   - **Root Directory**: `frontend`
   - **Build Command**: (leave empty)
   - **Output Directory**: (leave empty or put `.`)
   - **Install Command**: (leave empty)
6. Click **Save**

### Step 2: Redeploy

1. Go to **Deployments** tab
2. Click the **"..."** menu on the latest deployment
3. Click **"Redeploy"**
4. Or push a new commit to trigger a redeploy

### Step 3: Verify

After redeploy, your app should be accessible at:
- `https://pollit-two.vercel.app`
- `https://pollit-two.vercel.app/preview.html`

Both should work now!

## Alternative: If Still Not Working

If you still get 404, try this:

1. In Vercel Settings → General → Build & Development Settings
2. Set **Output Directory** to: `frontend`
3. Redeploy

Or create a simple `index.html` that redirects:

```html
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="refresh" content="0; url=preview.html">
</head>
<body>
    <script>window.location.href = 'preview.html';</script>
</body>
</html>
```

But the vercel.json should handle this automatically.

