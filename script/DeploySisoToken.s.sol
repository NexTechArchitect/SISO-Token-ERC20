// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {SisoToken} from "../src/SisoToken.sol";

contract DeploySisoToken is Script {
    function run() external {
        uint256 initialSupply = 250_000_000 ether;

        vm.startBroadcast();

        SisoToken token = new SisoToken("SISO Token", "SISO", initialSupply);

        vm.stopBroadcast();
    }
}
