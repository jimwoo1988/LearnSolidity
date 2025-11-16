// SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

type Duration is uint256;

type Timestamp is uint64;

type Clock is uint128;

library libClock {
    function wrap(Duration _duration, Timestamp _timestamp) 
        internal
        pure
        returns(Clock clock_)
    {
        assembly {
            clock_ := or(shl(0x40, _duration), _timestamp)
        }

    }
    
}