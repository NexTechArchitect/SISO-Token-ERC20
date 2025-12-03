
SISO Token — ERC-20 Smart Contract Suite

SISO Token is a structured ERC-20 implementation built with OpenZeppelin standards and a full Foundry workflow.
This repository represents a production-style token system that includes controlled minting, supply reduction through burning, transfer and allowance logic, pausing controls, and an end-to-end set of scripts for on-chain interaction.

The contract is deployed on the Sepolia test network under the address:

0xc8C711CDf3fD162b00F3447C6963C52aF3d44AAb

The token follows the ERC-20 standard with the following parameters:

Name: SISO Token
Symbol: SISO
Initial circulating supply at deployment: 250,000,000 SISO
Total theoretical supply framework: 1,000,000,000 SISO
Minted post-deployment: 250,000,000 SISO
Burn operations supported for supply reduction

The architecture is intentionally simple, modular, and transparent so that each core component of an ERC-20 system can be inspected, tested, and extended without ambiguity.


Contract Capabilities:-

The token inherits from OpenZeppelin’s audited contracts and supports:

• Owner-restricted minting for controlled supply expansion
• Token burning for permanent supply reduction
• Transfer logic following the ERC-20 specification
• Allowance management enabling delegated transfers
• Pausing and unpausing of all token transfers via owner authority
• Secure ownership pattern based on OpenZeppelin’s Ownable module

The implementation avoids unnecessary abstractions so developers can trace the full token lifecycle — creation, distribution, modification, and administrative control — directly from the code.


---

Project Layout

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

The separation ensures that deployment logic, administrative operations, and validation tests remain isolated and easy to audit.


Development Workflow:-

The project is fully based on Foundry.

Install Foundry:
curl -L https://foundry.paradigm.xyz | bash
foundryup

Compile the project:
forge build

Execute the complete test suite:
forge test

Generate test-coverage reports:
forge coverage

Each administrative or supply-modifying action has a dedicated script, enabling clean and predictable operations:

Deploy the token
Mint new supply
Burn existing supply
Pause or unpause contract transfers
Set or adjust allowances

Any script can be executed through:

forge script <script-path> --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast

This provides deterministic reproducibility for every on-chain action, matching professional-grade workflows used in production development environments.


Author

NEXTECHARHITECT
Smart Contract Developer — ERC-20 Engineering, Solidity Development, and Web3 Architecture

