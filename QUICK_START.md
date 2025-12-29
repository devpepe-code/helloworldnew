# Quick Start Guide

Get the prediction market MVP running in 5 minutes.

## Prerequisites Check

```bash
node --version  # Should be 18+
psql --version   # PostgreSQL should be installed
```

## 1. Install Dependencies

```bash
# Contracts
cd contracts && npm install

# Backend  
cd ../backend && npm install

# Frontend
cd ../frontend && npm install
```

## 2. Start Local Blockchain

```bash
cd contracts
npx hardhat node
# Keep this terminal open!
```

## 3. Deploy Contracts

In a new terminal:

```bash
cd contracts
npx hardhat run scripts/deploy.js --network localhost
```

Copy the `MarketFactory` address from output.

## 4. Setup Database

```bash
createdb prediction_market
psql prediction_market < backend/database.sql
```

## 5. Start Backend

```bash
cd backend

# Create .env file
echo "DATABASE_URL=postgresql://localhost:5432/prediction_market
RPC_URL=http://localhost:8545
MARKET_FACTORY_ADDRESS=<paste_factory_address>
PORT=3001" > .env

npm run dev
```

## 6. Start Frontend

```bash
cd frontend

# Create .env.local file
echo "NEXT_PUBLIC_API_URL=http://localhost:3001
NEXT_PUBLIC_MARKET_FACTORY_ADDRESS=<paste_factory_address>" > .env.local

npm run dev
```

## 7. Access App

Open http://localhost:3000 in your browser.

## 8. Connect Wallet

1. Import Hardhat account #0 into MetaMask:
   - Private key from Hardhat output (usually starts with `0xac0974...`)
2. Connect to Localhost:8545 network
3. Connect wallet in the app

## 9. Create Your First Market

1. Click "Create Market"
2. Fill in:
   - Title: "Test Market"
   - Outcomes: "Yes", "No"
   - End time: Tomorrow
   - Visibility: Public
3. Submit and approve transactions

## 10. Trade!

1. Click on your market
2. Select an outcome
3. Enter amount (e.g., "10")
4. Buy shares!

## Troubleshooting

**"Cannot connect to RPC"**
- Make sure Hardhat node is running (step 2)

**"Database connection failed"**
- Check PostgreSQL is running: `pg_isready`
- Verify database exists: `psql -l | grep prediction_market`

**"Contract not found"**
- Verify MARKET_FACTORY_ADDRESS in both .env files matches deployed address

**"Transaction failed"**
- Check you're connected to Localhost:8545 network
- Ensure account has ETH (Hardhat accounts have 10000 ETH)

## Next Steps

- Read [README.md](./README.md) for full documentation
- Check [DEPLOYMENT.md](./DEPLOYMENT.md) for production setup
- Review [docs/LIMITATIONS.md](./docs/LIMITATIONS.md) for known issues

