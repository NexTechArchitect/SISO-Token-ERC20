// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {SisoToken} from "../src/SisoToken.sol";

contract SisoAllowance is Script {
    function run() external {
        vm.startBroadcast();

        SisoToken token = SisoToken(0xc8C711CDf3fD162b00F3447C6963C52aF3d44AAb);

        address ownerAddr = address(0x023c6911c69b6c0E70A76C27b23fe1A32b08Bf98);
        address spenderAddr = address(
            0xc8C711CDf3fD162b00F3447C6963C52aF3d44AAb
        );

        token.approve(spenderAddr, 50_500_000 ether);

        vm.stopBroadcast();
    }
}
