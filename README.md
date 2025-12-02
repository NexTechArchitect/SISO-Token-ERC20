
SISO Token (ERC-20)

A clean and reliable ERC-20 implementation built with Foundry.
The project includes deployment scripts, minting and burning utilities, pausing controls, and complete test coverage for core functionality.

Contract Information:-

Network: Sepolia
Contract Address: 0xc8C711CDf3fD162b00F3447C6963C52aF3d44AAb
Standard: ERC-20
Name: SISO Token
Symbol: SISO
Initial Supply: 250,000,000 SISO

Features:-

Minting (owner-controlled),   
Burning, 
Pausable,  transfers, 
Allowance management, 
Secure ownership pattern, 
Comprehensive Foundry test suite,

(Deployment and interaction scripts (deploy, mint, burn, pause, unpause, allowance))

Project Structure:-

src/
  └── SisoToken.sol

script/
  ├── DeploySisoToken.s.sol
  ├── MintSisoToken.s.sol
  ├── BurnSisoToken.s.sol
  ├── PauseSisoToken.s.sol
  ├── UnpauseSisoToken.s.sol
  └── SisoAllowance.s.sol

test/
  └── SisoTokenFullTest.t.sol

Development:-

This project is built with Foundry.

Install Foundry:

curl -L https://foundry.paradigm.xyz | bash
foundryup

Build:
forge build

Run tests:
forge test

Coverage:
forge coverage

Each main action has its own executable script:

Deploy token,
Mint tokens, 
Burn tokens, 
Pause contract, 
Unpause contract, 
Set allowance 

Run any script with:

forge script <script-path> --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast

License:- 
MIT License

Author

NEXTECHARHITECT
Smart Contract Developer — ERC20, Web3, and Solidity engineering.

