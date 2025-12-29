# Backend Server Setup Guide

## What You Need

### 1. Node.js (Required)
Node.js is a JavaScript runtime that allows the backend server to run.

**Installation:**
- Go to https://nodejs.org/
- Download the **LTS (Long Term Support)** version
- Install it (follow the installer instructions)
- Restart your Terminal after installation

**Verify installation:**
```bash
node --version
```
You should see something like `v20.10.0` or similar.

### 2. npm (Comes with Node.js)
npm is the package manager for Node.js. It's automatically installed with Node.js.

**Verify installation:**
```bash
npm --version
```

### 3. Install Backend Dependencies
Once Node.js is installed, install the required packages:

```bash
cd /Users/enriqueguasp/Desktop/prediction-market-mvp/backend
npm install
```

This will install:
- express (web server framework)
- cors (cross-origin resource sharing)
- sequelize (database ORM)
- pg (PostgreSQL driver)
- ethers (blockchain library)
- dotenv (environment variables)

### 4. Database (Optional - Server will work without it)
The server can run without a database, but comments won't persist after restart.

**If you want full functionality:**
- Install PostgreSQL: https://www.postgresql.org/download/
- Create a database named `prediction_market`
- Or set `DATABASE_URL` in a `.env` file

**If you don't have PostgreSQL:**
- The server will still start
- Comments will work during the session
- They just won't persist after server restart

## Starting the Server

### Step 1: Navigate to backend folder
```bash
cd /Users/enriqueguasp/Desktop/prediction-market-mvp/backend
```

### Step 2: Install dependencies (first time only)
```bash
npm install
```

### Step 3: Start the server
```bash
node server.js
```

### Step 4: Verify it's running
You should see:
```
✅ Backend server running on port 3001
📡 API available at http://localhost:3001
```

### Step 5: Keep Terminal open
**IMPORTANT:** Don't close the Terminal window. The server runs in that window.

## Quick Start Script

I've created a script to make it easier. After installing Node.js:

```bash
/Users/enriqueguasp/Desktop/prediction-market-mvp/START_BACKEND.sh
```

## Troubleshooting

### "node: command not found"
- Node.js is not installed or not in PATH
- Install Node.js from https://nodejs.org/
- Restart Terminal after installation

### "Cannot find module" errors
- Run `npm install` in the backend folder
- This installs all required packages

### Database connection errors
- The server will still start and work
- Comments will function, just won't persist
- To fix: Install PostgreSQL and create the database

### Port 3001 already in use
- Another process is using port 3001
- Close other applications
- Or change the port in `backend/server.js`

## What the Server Does

Once running, the backend provides:
- ✅ Comment posting and retrieval
- ✅ Like/unlike comments
- ✅ Reply to comments
- ✅ Top holders data
- ✅ Market data API
- ✅ User authentication

The frontend at `localhost:3000` will connect to the backend at `localhost:3001`.


