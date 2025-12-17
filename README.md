<div align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=28&duration=3000&pause=1000&color=007AFF&center=true&vCenter=true&width=500&lines=SISO+Token+(ERC-20);Engineered+with+Foundry;Secure+%7C+Scalable+%7C+Modular" alt="Typing Effect" />

  <br/>

  <img src="https://img.shields.io/badge/Network-Sepolia-FF4500?style=for-the-badge&logo=ethereum&logoColor=white" />
  <img src="https://img.shields.io/badge/Standard-ERC20-363636?style=for-the-badge&logo=solidity&logoColor=white" />
  <img src="https://img.shields.io/badge/Built_With-Foundry-BE5212?style=for-the-badge&logo=foundry&logoColor=white" />
  
  <br/>
  
  <p>
    <b>A production-grade, paused-enabled, and burn-ready ERC-20 implementation.</b>
  </p>

  <a href="#-contract-details"><strong>Contract Details</strong></a> •
  <a href="#-architecture"><strong>Architecture</strong></a> •
  <a href="#-installation--testing"><strong>Deploy Now</strong></a>

</div>

---

## 📊 Contract Details

| Parameter | Value |
| :--- | :--- |
| **Name** | `SISO Token` |
| **Symbol** | `$SISO` |
| **Total Supply** | `1,000,000,000` |
| **Network** | Sepolia Testnet |
| **Contract Address** | [`0xc8C711CDf3fD162b00F3447C6963C52aF3d44AAb`](https://sepolia.etherscan.io/address/0xc8C711CDf3fD162b00F3447C6963C52aF3d44AAb) |

---

## 🏗 Architecture

A clean, modular structure ensuring separation of concerns for security and testing.

```txt
SISO-Token-ERC20/
├── 📂 src
│   └── 📜 SisoToken.sol         # Core Logic (Inherits ERC20, Ownable)
├── 📂 script
│   ├── 🚀 DeploySisoToken.s.sol # Deployment Script
│   ├── 🪙 MintSisoToken.s.sol   # Minting Logic
│   ├── 🔥 BurnSisoToken.s.sol   # Burning Logic
│   └── ⏸️ PauseSisoToken.s.sol  # Security Pause Logic
├── 📂 test
│   └── 🧪 SisoToken.t.sol       # Invariant & Fuzz Tests
└── ⚙️ foundry.toml              # Configuration
🛠 Key Features
<table width="100%"> <tr> <td width="50%" valign="top"> <h3>🔐 Security First</h3> <ul> <li><b>Access Control:</b> Owner-only minting to prevent inflation.</li> <li><b>Emergency Pause:</b> Circuit breaker to freeze transfers.</li> <li><b>Pattern:</b> Isolated ownership logic.</li> </ul> </td> <td width="50%" valign="top"> <h3>⚙️ Tokenomics Engine</h3> <ul> <li><b>Deflationary:</b> Built-in burn mechanism.</li> <li><b>Standard:</b> Full approve & transferFrom support.</li> <li><b>Automation:</b> Scriptable deployment.</li> </ul> </td> </tr> </table>

⚡ Installation & Testing
Follow these steps to set up the environment and run the test suite.

1️⃣ Clone & Install
Bash

git clone [https://github.com/NexTechArchitect/SISO-Token-ERC20.git](https://github.com/NexTechArchitect/SISO-Token-ERC20.git)
cd SISO-Token-ERC20
forge install
2️⃣ Run Automated Tests
Execute the Foundry test suite to validate minting, burning, and pausing mechanics.

Bash

forge test -vvv
3️⃣ Deploy to Sepolia
Create a .env file with your SEPOLIA_RPC_URL and PRIVATE_KEY, then run:

Bash

source .env

forge script script/DeploySisoToken.s.sol \
  --rpc-url $SEPOLIA_RPC_URL \
  --private-key $PRIVATE_KEY \
  --broadcast \
  --verify
<div align="center">


<img src="https://raw.githubusercontent.com/rajput2107/rajput2107/master/Assets/Developer.gif" width="40" />


<b>Developed by NexTechArchitect</b>


<i>Building the Future of Web3</i>



<a href="https://github.com/NexTechArchitect"> <img src="https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white" alt="GitHub"/> </a> <a href="https://www.google.com/search?q=https://linkedin.com/in/amit-kumar-811a11277"> <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=flat-square&logo=linkedin&logoColor=white" alt="LinkedIn"/> </a>

</div>
