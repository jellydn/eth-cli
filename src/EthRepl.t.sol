// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./EthRepl.sol";

contract EthReplTest is DSTest {
    EthRepl repl;

    function setUp() public {
        repl = new EthRepl();
    }

    function test_withdraw() public {
        payable(address(repl)).transfer(1 ether);
        uint256 preBalance = address(this).balance;
        repl.withdraw(42);
        uint256 postBalance = address(this).balance;
        assertEq(preBalance + 1 ether, postBalance);
    }

    function testFail_withdraw_wrong_pass() public {
        payable(address(repl)).transfer(1 ether);
        uint256 preBalance = address(this).balance;
        repl.withdraw(1);
        uint256 postBalance = address(this).balance;
        assertEq(preBalance + 1 ether, postBalance);
    }

    function test_set_counter() public {
        assertEq(repl.getCounter(), 0);
    }

    function test_get_counter() public {
        assertEq(repl.getCounter(), 0);
        repl.setCounter(42);
        assertEq(repl.getCounter(), 42);
    }

    // allow sending eth to the test contract
    receive() external payable {}
}
