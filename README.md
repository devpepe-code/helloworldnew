# Prediction Market MVP

A consumer-facing prediction market platform for everyday life polls, inspired by Polymarket. Optimized for fast creation, frequent usage, and social interaction.

## Features

- **Multi-Outcome Markets**: Support 2-N outcomes per market
- **Visibility Control**: Public, Private, or Group markets
- **AMM Trading**: Automated market maker for instant liquidity
- **Tokenized Shares**: Each outcome has its own ERC-20 share token
- **Resolution System**: Creator-proposed with challenge mechanism
- **Social Features**: Group markets for friends, DAOs, teams

## Architecture

```
prediction-market-mvp/
├── contracts/          # Smart contracts (Solidity)
├── backend/            # API server (Node.js/Express)
├── frontend/           # Web app (Next.js/React)
└── docs/               # Documentation
```

## Quick Start

### Prerequisites

- Node.js 18+
- PostgreSQL
- Hardhat (for contracts)
- MetaMask or Web3 wallet

### 1. Smart Contracts

```bash
cd contracts
npm install
npx hardhat compile
npx hardhat node  # Start local blockchain
```

Deploy contracts:
```bash
npx hardhat run scripts/deploy.js --network localhost
```

### 2. Backend

```bash
cd backend
npm install
cp .env.example .env  # Configure database and RPC URL
npm run dev
```

Set environment variables:
- `DATABASE_URL`: PostgreSQL connection string
- `RPC_URL`: Ethereum RPC endpoint
- `MARKET_FACTORY_ADDRESS`: Deployed MarketFactory address

### 3. Frontend

```bash
cd frontend
npm install
cp .env.example .env.local  # Configure API URL and contract addresses
npm run dev
```

Set environment variables:
- `NEXT_PUBLIC_API_URL`: Backend API URL
- `NEXT_PUBLIC_MARKET_FACTORY_ADDRESS`: MarketFactory address

## Project Structure

### Smart Contracts

- **MarketFactory.sol**: Creates and tracks markets
- **Market.sol**: Core market logic, trading, resolution
- **MarketToken.sol**: ERC-20 utility token
- **AMM.sol**: Automated market maker pricing
- **OutcomeShareToken.sol**: ERC-20 tokens per outcome

### Backend

- **server.js**: Express API server
- **database.sql**: PostgreSQL schema
- Routes:
  - `GET /api/markets`: List markets
  - `GET /api/markets/:address`: Get market details
  - `POST /api/markets/index/:address`: Index market from blockchain
  - `GET /api/users/:address/positions`: Get user positions

### Frontend

- **pages/index.js**: Market discovery page
- **pages/market/[address].js**: Market detail and trading
- **components/CreateMarketModal.js**: Market creation flow
- **components/MarketCard.js**: Market listing card
- **components/OutcomeCard.js**: Outcome display and trading

## Deployment

### Vercel Deployment

Deploy your frontend to Vercel in minutes:

- **[Quick Deploy Guide](./QUICK_DEPLOY.md)**: 5-minute quick start
- **[Full Deployment Guide](./VERCEL_DEPLOYMENT.md)**: Comprehensive deployment instructions

Quick start:
```bash
cd frontend
vercel
```

## Documentation

- [System Design](./docs/SYSTEM_DESIGN.md): Architecture overview
- [AMM Pricing](./docs/AMM_PRICING.md): Pricing mechanism explanation
- [Limitations](./docs/LIMITATIONS.md): Known issues and attack vectors
- [Deployment Guide](./VERCEL_DEPLOYMENT.md): Complete deployment instructions

## Development

### Testing Contracts

```bash
cd contracts
npx hardhat test
```

### Database Migration

```bash
psql -U postgres -d prediction_market -f backend/database.sql
```

### Environment Setup

See `.env.example` files in each directory for required environment variables.

## Key Design Decisions

1. **Simplified AMM**: Uses bonding curve instead of full LMSR for MVP
2. **No Oracle**: Relies on creator proposal + challenge for resolution
3. **Single Token**: MarketToken only, no multi-token support
4. **Visibility at Creation**: Immutable visibility type
5. **No Order Book**: AMM-only trading for simplicity

## Roadmap

- [ ] Oracle integration for automated resolution
- [ ] True LMSR implementation
- [ ] Multi-token support (ETH, USDC)
- [ ] Advanced trading (limit orders)
- [ ] Mobile app
- [ ] Social features (comments, sharing)
- [ ] Analytics dashboard

## License

MIT

## Disclaimer

This is an MVP for demonstration purposes. Not audited. Use at your own risk. See [Limitations](./docs/LIMITATIONS.md) for known issues and security considerations.

