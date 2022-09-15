// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

contract EthRepl {
    // State variable to store a number
    uint256 public num;

    // You need to send a transaction to write to a state variable.
    function setCounter(uint256 _num) public {
        num = _num;
    }

    // You can read from a state variable without sending a transaction.
    function getCounter() public view returns (uint256) {
        return num;
    }


    receive() external payable {}

    function withdraw(uint256 password) public {
        require(password == 42, "Access denied!");
        payable(msg.sender).transfer(address(this).balance);
    }
}
