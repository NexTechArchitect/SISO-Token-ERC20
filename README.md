<div align="center">

  <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=40&duration=3000&pause=1000&color=007AFF&center=true&vCenter=true&width=700&lines=SISO+Token+(ERC-20);Production-Grade+DeFi+Standard;Powered+by+Foundry+%26+OpenZeppelin" alt="Typing Effect" />

  <br/>
  
  <img src="https://img.shields.io/badge/Network-Sepolia_Testnet-FF4500?style=for-the-badge&logo=ethereum&logoColor=white" />
  <img src="https://img.shields.io/badge/Standard-ERC--20-363636?style=for-the-badge&logo=solidity&logoColor=white" />
  <img src="https://img.shields.io/badge/Security-Pausable_%7C_Ownable-0052FF?style=for-the-badge&logo=security-scorecard&logoColor=white" />
  <br/>
  <img src="https://img.shields.io/badge/Built_With-Foundry-BE5212?style=flat-square&logo=foundry&logoColor=white" />
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" />

</div>

---

<div align="center"> 
  <h3>🚀 Production-Ready Token Engineering</h3>
  <p>
    <b>SISO Token</b> is a secure, clean, and modular <b>ERC-20 implementation</b> designed for real-world reliability. <br/>
    Built using <b>OpenZeppelin</b> standards and the <b>Foundry</b> development framework, it features a complete lifecycle management suite: <br/>
    <i>Minting, Burning, Pausing, and Automated Testing.</i>
  </p>
  
  <a href="#-contract-information">View Contract</a> • 
  <a href="#-features">Key Features</a> • 
  <a href="#-installation--testing">Deploy & Test</a>
</div>

---

## 📊 Contract Information

<div align="center">

| **Category** | **Details** |
| :--- | :--- |
| **Contract Name** | `SISO Token` |
| **Symbol** | **$SISO** |
| **Address (Sepolia)** | [`0xc8C711CDf3fD162b00F3447C6963C52aF3d44AAb`](https://sepolia.etherscan.io/address/0xc8C711CDf3fD162b00F3447C6963C52aF3d44AAb) |
| **Total Supply** | `1,000,000,000 SISO` (1 Billion) |
| **Initial Mint** | `250,000,000 SISO` |
| **Burned Supply** | `250,000,000 SISO` (🔥 Permanently Removed) |
| **Current Supply** | **750,000,000 SISO** |

</div>

---

## 🛠 Key Features

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <h3>🔐 Security & Access</h3>
      <ul>
        <li><b>Owner-Controlled Minting:</b> Restricted access to prevent inflation attacks.</li>
        <li><b>Pausable Transfers:</b> Circuit breaker to freeze transfers during emergencies.</li>
        <li><b>Isolated Ownership:</b> Secure pattern separating logic from admin controls.</li>
      </ul>
    </td>
    <td width="50%" valign="top">
      <h3>⚙️ Advanced Mechanics</h3>
      <ul>
        <li><b>Deflationary Engine:</b> Native <code>burn</code> functionality to reduce supply.</li>
        <li><b>Full ERC-20 Support:</b> `approve`, `transferFrom`, and `allowance` fully implemented.</li>
        <li><b>Foundry Scripting:</b> Automated scripts for deployment and interaction.</li>
      </ul>
    </td>
  </tr>
</table>

---

## 🏗️ Architecture & Structure

A modular codebase optimized for clarity and testing.

```bash
SISO-Token-ERC20/
├── 📂 src
│   └── 📄 SisoToken.sol          # Main Contract (Inherits ERC20, Ownable, Pausable)
├── 📂 script
│   ├── 📄 DeploySisoToken.s.sol  # Deployment to Chain
│   ├── 📄 MintSisoToken.s.sol    # Post-deploy Minting Logic
│   ├── 📄 BurnSisoToken.s.sol    # Supply Reduction Logic
│   └── 📄 PauseSisoToken.s.sol   # Emergency Control Logic
├── 📂 test
│   └── 🧪 SisoToken.t.sol        # Invariant & Fuzz Tests
└── 📄 foundry.toml               # Config
⚡ Installation & Testing
Powered by Foundry for blazing-fast compilation.

1️⃣ Clone & Install
Bash

git clone [https://github.com/NexTechArchitect/SISO-Token-ERC20.git](https://github.com/NexTechArchitect/SISO-Token-ERC20.git)
cd SISO-Token-ERC20
forge install
2️⃣ Run Tests
Execute the automated test suite to validate burn/mint logic.

Bash

forge test -vvv
3️⃣ Deploy (Sepolia)
Set your .env file with RPC_URL and PRIVATE_KEY.

Bash

forge script script/DeploySisoToken.s.sol \
  --rpc-url $SEPOLIA_RPC_URL \
  --private-key $PRIVATE_KEY \
  --broadcast \
  --verify
<div align="center">


<img src="https://raw.githubusercontent.com/rajput2107/rajput2107/master/Assets/Developer.gif" width="30">


<b>Developed by NexTechArchitect</b>


<i>Building the Future of Web3</i>



<a href="https://github.com/NexTechArchitect"> <img src="https://www.google.com/search?q=https://img.shields.io/badge/GitHub-Connect-181717%3Fstyle%3Dflat%26logo%3Dgithub%26logoColor%3Dwhite" /> </a> <a href="https://www.google.com/search?q=https://linkedin.com/in/amit-kumar-811a11277"> <img src="https://www.google.com/search?q=https://img.shields.io/badge/LinkedIn-Connect-0077B5%3Fstyle%3Dflat%26logo%3Dlinkedin%26logoColor%3Dwhite" /> </a> </div>

