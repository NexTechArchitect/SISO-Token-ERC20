// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {SisoToken} from "../src/SisoToken.sol";

contract UnpauseSisoToken is Script {
    function run() external {
        vm.startBroadcast();

        SisoToken token = SisoToken(0xc8C711CDf3fD162b00F3447C6963C52aF3d44AAb);

        token.unpause();

        vm.stopBroadcast();
    }
}
