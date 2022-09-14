// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./EthRepl.sol";

contract EthReplTest is DSTest {
    EthRepl repl;

    function setUp() public {
        repl = new EthRepl();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
