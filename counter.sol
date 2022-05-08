// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Counter {
    uint256 public count = 0; //state variable

    event Increment(uint256 value);
    event Decrement(uint256 value);

    function getCount() view public returns(uint) {
        return count;
    }

    function increment() public {
        count += 1;
        emit Increment(count);
    }

    function decrement() public {
        count -= 1;
        emit Decrement(count);
    }
}
