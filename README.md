<div align="center">

<img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&weight=600&size=24&pause=1000&color=007AFF&center=true&vCenter=true&width=500&height=80&lines=SISO+Token+(ERC-20);Engineered+for+Production;Secure+%7C+Scalable+%7C+Modular" alt="Typing Effect" />

<p>
<img src="https://img.shields.io/badge/Network-Sepolia-FF4500?style=flat-square&logo=ethereum&logoColor=white" />
<img src="https://img.shields.io/badge/Language-Solidity_0.8.20-363636?style=flat-square&logo=solidity&logoColor=white" />
<img src="https://img.shields.io/badge/Framework-Foundry-BE5212?style=flat-square&logo=foundry&logoColor=white" />
</p>

<p>
  <b>A production-grade, paused-enabled, and burn-ready ERC-20 implementation.</b>
</p>

<a href="#-contract-details"><strong>Contract Details</strong></a> •
<a href="#-project-architecture"><strong>Architecture</strong></a> •
<a href="#-installation--usage"><strong>Deploy</strong></a>

</div>

---

## 📊 Contract Details

| Parameter | Value |
| :--- | :--- |
| **Name** | `SISO Token` |
| **Symbol** | `$SISO` |
| **Total Supply** | `1,000,000,000` |
| **Network** | Sepolia Testnet |
| **Address** | [`0xc8C711CDf3fD162b00F3447C6963C52aF3d44AAb`](https://sepolia.etherscan.io/address/0xc8C711CDf3fD162b00F3447C6963C52aF3d44AAb) |

---

## 🏗 Project Architecture

This project uses a modular folder structure for clarity and testing efficiency.

* 📂 **`src/`**
    * 📄 `SisoToken.sol` — The main smart contract (Inherits ERC20, Ownable, Pausable).
* 📂 **`script/`**
    * 🚀 `DeploySisoToken.s.sol` — Automated deployment script.
    * 🪙 `MintSisoToken.s.sol` — Post-deployment minting logic.
    * 🔥 `BurnSisoToken.s.sol` — Supply reduction logic.
    * ⏸️ `PauseSisoToken.s.sol` — Emergency pause control.
* 📂 **`test/`**
    * 🧪 `SisoToken.t.sol` — Invariant, Fuzz, and Unit tests.

---

## 🛠 Key Features

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <h3>🔐 Security First</h3>
      <ul>
        <li><b>Access Control:</b> Owner-only minting.</li>
        <li><b>Emergency Pause:</b> Circuit breaker to freeze transfers.</li>
        <li><b>Pattern:</b> Isolated ownership logic.</li>
      </ul>
    </td>
    <td width="50%" valign="top">
      <h3>⚙️ Tokenomics Engine</h3>
      <ul>
        <li><b>Deflationary:</b> Built-in burn mechanism.</li>
        <li><b>Standard:</b> Full `approve` & `transferFrom` support.</li>
        <li><b>Automation:</b> Scriptable deployment.</li>
      </ul>
    </td>
  </tr>
</table>

---

## ⚡ Installation & Usage

### 1. Setup
```bash
git clone [https://github.com/NexTechArchitect/SISO-Token-ERC20.git](https://github.com/NexTechArchitect/SISO-Token-ERC20.git)
cd SISO-Token-ERC20
forge install
2. Testing
Run the comprehensive test suite to verify contract logic.

Bash

forge test -vvv
3. Deployment (Sepolia)
Set your .env file with RPC_URL and PRIVATE_KEY.

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



<a href="https://github.com/NexTechArchitect"> <img src="https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white" alt="GitHub"/> </a> <a href="https://www.google.com/search?q=https://linkedin.com/in/amit-kumar-811a11277"> <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=flat-square&logo=linkedin&logoColor=white" alt="LinkedIn"/> </a> </div>
