// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {SisoToken} from "../src/SisoToken.sol";

contract SisoTokenFullTest is Test {
    SisoToken public token;

    address[] public users;
    address public deployerAddr;

    uint256 public constant INITIAL_SUPPLY = 250_000_000 ether;
    uint256 public constant USER_SHARE = 1_000_000 ether;

    function setUp() public {
        token = new SisoToken("SISO Token", "SISO", INITIAL_SUPPLY);
        deployerAddr = address(this);

        for (uint256 i = 0; i < 12; i++) {
            address a = makeAddr(
                string(abi.encodePacked("user", vm.toString(i)))
            );
            users.push(a);
            vm.deal(a, 10 ether);
        }
        for (uint256 i = 0; i < 10; i++) {
            token.transfer(users[i], USER_SHARE);
        }
    }

    function testInitialSupplyAssignedToDeployerAndDistributed() public {
        uint256 distributed = USER_SHARE * 10;
        uint256 expectedDeployer = INITIAL_SUPPLY - distributed;

        assertEq(token.totalSupply(), INITIAL_SUPPLY);
        assertEq(token.balanceOf(deployerAddr), expectedDeployer);
    }

    function testUsersReceivedDistribution() public {
        for (uint256 i = 0; i < 10; i++) {
            assertEq(token.balanceOf(users[i]), USER_SHARE);
        }
    }

    function testSimpleTransferBetweenUsers() public {
        address from = users[0];
        address to = users[1];
        uint256 amount = 100 ether;

        vm.prank(from);
        token.transfer(to, amount);

        assertEq(token.balanceOf(from), USER_SHARE - amount);
        assertEq(token.balanceOf(to), USER_SHARE + amount);
    }

    function testApproveAndTransferFrom() public {
        address owner = users[2];
        address spender = users[3];
        address recipient = users[4];
        uint256 allowanceAmt = 500 ether;
        uint256 transferAmt = 400 ether;

        vm.prank(owner);
        token.approve(spender, allowanceAmt);

        vm.prank(spender);
        token.transferFrom(owner, recipient, transferAmt);

        // checks
        assertEq(token.balanceOf(owner), USER_SHARE - transferAmt);
        assertEq(token.balanceOf(recipient), USER_SHARE + transferAmt);
        assertEq(token.allowance(owner, spender), allowanceAmt - transferAmt);
    }

    function testBurnReducesSupplyAndBalance() public {
        address burner = users[5];
        uint256 burnAmt = 250 ether;

        vm.prank(burner);
        token.burn(burnAmt);

        assertEq(token.balanceOf(burner), USER_SHARE - burnAmt);
        assertEq(token.totalSupply(), INITIAL_SUPPLY - burnAmt);
    }

    function test_RevertWhen_TransferMoreThanBalance() public {
        address poor = users[6];
        uint256 tooMuch = USER_SHARE + 1 ether;

        vm.prank(poor);
        vm.expectRevert();
        token.transfer(users[7], tooMuch);
    }

    function test_RevertWhen_TransferFromWithoutAllowance() public {
        address owner = users[8];
        address attacker = users[9];

        vm.prank(attacker);
        vm.expectRevert();
        token.transferFrom(owner, attacker, 1 ether);
    }

    function testMassTransfersRoundRobin() public {
        uint256 small = 10 ether;
        for (uint256 i = 0; i < 10; i++) {
            address from = users[i];
            address to = users[(i + 1) % 10];
            vm.prank(from);
            token.transfer(to, small);
        }

        uint256 total = 0;
        for (uint256 i = 0; i < 10; i++) {
            total += token.balanceOf(users[i]);
            assert(token.balanceOf(users[i]) >= 0);
        }

        assertEq(total + token.balanceOf(deployerAddr), token.totalSupply());
    }
}
