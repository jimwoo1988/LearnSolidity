// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Immutable {
    address public immutable myaddress; //不可更改的
    uint public immutable myUnit;

    constructor(uint256 _myUnit) {
        myUnit = _myUnit;
        myaddress = msg.sender;
    }

}