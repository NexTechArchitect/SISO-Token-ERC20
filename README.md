
SISO Token (ERC-20)

SISO Token is a clean, reliable, and production-grade ERC-20 implementation built using OpenZeppelin standards and Foundry.
It includes a full suite of utilities: deployment, minting, burning, pausing controls, allowance management, and an automated test suite that validates all core behaviors.

This repository serves as a practical, engineering-focused template for real-world ERC-20 token development.



Contract Information

Network: Sepolia Testnet
Standard: ERC-20
Name: SISO Token
Symbol: SISO
Total Supply: 1,000,000,000 SISO
Initial Minted Supply: 250,000,000 SISO
Burned Supply: 250,000,000 SISO
Current Remaining Supply: 500,000,000 SISO
Contract Address: 0xc8C711CDf3fD162b00F3447C6963C52aF3d44AAb


Features

The SISO Token contract includes the essential and commonly used ERC-20 extensions:

Owner-controlled minting

Token burning

Pausable token transfers

Standard transfer and transferFrom

Full allowance and approval support

Secure and isolated ownership pattern

Modular project architecture

Production-ready Foundry scripts

Comprehensive test coverage including:

Minting

Burning

Transfers

Allowances

Pause / Unpause behavior

Ownership restrictions



Project Structure

src/
    SisoToken.sol

script/
    DeploySisoToken.s.sol
    MintSisoToken.s.sol
    BurnSisoToken.s.sol
    PauseSisoToken.s.sol
    UnpauseSisoToken.s.sol
    SisoAllowance.s.sol

test/
    SisoTokenFullTest.t.sol


Development

This project uses Foundry for compilation, testing, deployment, and scripting.

Install Foundry

curl -L https://foundry.paradigm.xyz | bash
foundryup

Contract Capabilities:-

The token inherits from OpenZeppelin’s audited contracts and supports:

• Owner-restricted minting for controlled supply expansion
• Token burning for permanent supply reduction
• Transfer logic following the ERC-20 specification
• Allowance management enabling delegated transfers
• Pausing and unpausing of all token transfers via owner authority
• Secure ownership pattern based on OpenZeppelin’s Ownable module

The implementation avoids unnecessary abstractions so developers can trace the full token lifecycle — creation, distribution, modification, and administrative control — directly from the code.

Deployment & Interaction Scripts

Each action in this token system is modularized into its own Foundry script:

Deploy the token

Mint new tokens

Burn tokens

Pause transfers

Unpause transfers

Set token allowances


Run any script using this format:

forge script <script-path> --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast

This makes the workflow predictable and clean for real deployments.


License

MIT License


Author

NEXTECHARHITECT
Smart Contract Developer — ERC-20 Engineering, Web3 Development, and Solidity Architecture.

