// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

import {Test} from "forge-std/Test.sol";
import {MyToken} from "../src/MyToken.sol";
import {DeployMyToken} from "../script/DeployMyToken.s.sol";

contract MyTokenTest is Test {
    MyToken public myToken;
    DeployMyToken public deployMyToken;
    
    // User test addresses
    address public user1 = makeAddr("user1");
    address public user2 = makeAddr("user2");

    // User Airdrop
    uint256 public constant AIRDROP = 100 ether;
    
    function setUp() external{
        // setup code here
        deployMyToken = new DeployMyToken();
        myToken = deployMyToken.run();

        vm.prank(msg.sender);
        myToken.transfer(user1, AIRDROP);
    }

    function testConstructor() public {
        uint256 initialSupply = 1000;
        MyToken token = new MyToken(initialSupply);
        assertEq(token.totalSupply(), initialSupply);
    }

    function testTokenNameAndSymbol() public view {
        assertEq(myToken.name(), "c0deg33k");
        assertEq(myToken.symbol(), "CGK");
    }

    function testTotalSupply() public view {
        assertEq(myToken.totalSupply(), 10000 ether);
    }

    function testDeployerBalance() public view {
        assertEq(myToken.balanceOf(msg.sender), myToken.totalSupply() - AIRDROP);
    }

    function testUser1Has100Ether() public view {
        assertEq(myToken.balanceOf(user1), AIRDROP);
    }

    function testAllowancesWork() public {
        // User 1 allows user 2 to spend ether on their behalf
        uint256 maximumAllowed = 50;
        vm.prank(user1);
        myToken.approve(user2, maximumAllowed);

        vm.prank(user2);
        myToken.transferFrom(user1, user2, maximumAllowed);
        assertEq(myToken.balanceOf(user2), maximumAllowed);
        assertEq(myToken.balanceOf(user1), AIRDROP - maximumAllowed);
    }

    function testTransferFromUser1ToUser2() public {
        uint256 amount = 20;
        vm.prank(user1);
        myToken.transfer(user2, amount);
        assertEq(myToken.balanceOf(user2), amount);
        assertEq(myToken.balanceOf(user1), AIRDROP - amount);
    }
    function testUserCannotTransferMoreThanTheyHave() public {
        uint256 amount = AIRDROP + 1;
        vm.prank(user1);
        vm.expectRevert();
        myToken.transfer(user2, amount);
    }
    function testUserCannotTransferFromAnotherUserWithoutApproval() public {
        uint256 amount = 20;
        vm.prank(user2);
        vm.expectRevert();
        myToken.transferFrom(user1, user2, amount);
    }
     function testApproveUpdatesAllowanceCorrectly() public {
        uint256 amount = 50;
        vm.prank(user1);
        myToken.approve(user2, amount);
        assertEq(myToken.allowance(user1, user2), amount);
    }

    function testTransferFromUpdatesAllowanceCorrectly() public {
        uint256 amount = 50;
        vm.prank(user1);
        myToken.approve(user2, amount);
        vm.prank(user2);
        myToken.transferFrom(user1, user2, amount);
        assertEq(myToken.allowance(user1, user2), 0);
    }

}