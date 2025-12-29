# How to Upload to GitHub - Step by Step Guide

## Your code is ready! Here's how to upload it:

### Step 1: Create a GitHub Repository

1. Go to **https://github.com/new**
2. Sign in (or create an account if you don't have one)
3. Fill in:
   - **Repository name**: `prediction-market-mvp` (or any name you like)
   - **Description**: "PolliT - Prediction Market MVP"
   - **Visibility**: Choose Public or Private
   - **DO NOT** check "Initialize with README" (we already have one)
   - **DO NOT** add .gitignore or license (we already have them)
4. Click **"Create repository"**

### Step 2: Push Your Code

After creating the repository, GitHub will show you instructions. But here's what to do:

**Option A: Using GitHub Desktop (Easiest - No Command Line)**

1. Download GitHub Desktop: https://desktop.github.com/
2. Install and sign in with your GitHub account
3. Click **"File" → "Add Local Repository"**
4. Navigate to: `/Users/enriqueguasp/Desktop/prediction-market-mvp`
5. Click **"Add Repository"**
6. Click **"Publish repository"** (top right)
7. Choose your GitHub account and repository name
8. Click **"Publish Repository"**

**Option B: Using Command Line (Terminal)**

Open Terminal and run these commands one by one:

```bash
# Navigate to your project
cd /Users/enriqueguasp/Desktop/prediction-market-mvp

# Add your GitHub repository as remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/prediction-market-mvp.git

# Push your code
git branch -M main
git push -u origin main
```

**If it asks for credentials:**
- Username: Your GitHub username
- Password: Use a **Personal Access Token** (not your GitHub password)
  - Create one here: https://github.com/settings/tokens
  - Click "Generate new token (classic)"
  - Give it a name like "Vercel Deployment"
  - Check the `repo` scope
  - Click "Generate token"
  - Copy the token and use it as your password

**Option C: Upload via GitHub Website (Simple but limited)**

1. Go to your new repository on GitHub
2. Click **"uploading an existing file"**
3. Drag and drop your entire `prediction-market-mvp` folder
4. Scroll down and click **"Commit changes"**

⚠️ **Note**: This method doesn't preserve git history, but it works if you just want to get the code online quickly.

### Step 3: Verify Upload

1. Go to your GitHub repository page
2. You should see all your files:
   - `frontend/` folder
   - `backend/` folder
   - `contracts/` folder
   - `README.md`
   - `.gitignore`
   - etc.

### Step 4: Deploy to Vercel

Once your code is on GitHub:

1. Go to **https://vercel.com/new**
2. Sign in with GitHub
3. Click **"Import Project"**
4. Select your `prediction-market-mvp` repository
5. Configure:
   - **Framework Preset**: Other
   - **Root Directory**: `frontend`
   - **Build Command**: (leave empty)
   - **Output Directory**: (leave empty)
6. Click **"Deploy"**

Your app will be live in about 2 minutes! 🚀

## Troubleshooting

**"Repository not found" error:**
- Make sure you created the repository on GitHub first
- Check that the repository name matches exactly
- Verify your GitHub username is correct

**"Permission denied" error:**
- Use a Personal Access Token instead of password
- Make sure the token has `repo` scope

**"Already exists" error:**
- The remote might already be added
- Run: `git remote remove origin` then try again

## Your Project Location

Your project is located at:
```
/Users/enriqueguasp/Desktop/prediction-market-mvp
```

All files are ready and committed. You just need to push them to GitHub!

