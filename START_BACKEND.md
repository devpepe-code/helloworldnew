# How to Start the Backend Server

## The Problem
The backend server needs to be running on port 3001 for comments to work.

## Solution

### Step 1: Check if Node.js is installed
Open Terminal and run:
```bash
node --version
```

If you see a version number (like v18.x.x or v20.x.x), Node.js is installed. Skip to Step 3.

### Step 2: Install Node.js (if needed)
If Node.js is not installed:
1. Go to https://nodejs.org/
2. Download and install the LTS version
3. Restart Terminal
4. Run `node --version` again to verify

### Step 3: Start the Backend Server
Open Terminal and run:
```bash
cd /Users/enriqueguasp/Desktop/prediction-market-mvp/backend
node server.js
```

You should see:
```
✅ Backend server running on port 3001
📡 API available at http://localhost:3001
```

### Step 4: Keep Terminal Open
**IMPORTANT:** Keep the Terminal window open while using the app. Closing it will stop the server.

### Step 5: Try Posting a Comment
Go back to your browser and try posting a comment again. It should work now!

## Troubleshooting

**If you see database errors:**
- The server will still start and work
- Comments may not persist after restart, but they'll work during the session

**If port 3001 is already in use:**
- Another process might be using it
- Close other applications or change the port in backend/server.js
