// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Enum {
    enum Stauts {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
        
    }
    Stauts public status;

    function get() public view  returns (Stauts) {
        return status;
    }
    function set(Stauts _status) public {
        status = _status;
    }
    function cancel() public {
        status = Stauts.Canceled；
    }
    function reset() public {
        delete status;
    }
}