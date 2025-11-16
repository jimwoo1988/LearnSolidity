// SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Array{
    uint256[] public arr;
    uint256[] public arr2 = [1,2,3];
    uint256[10] public myFixedSizeArr;

    function get(uint256 i)public view returns(uint256) {
        return arr[i];
    }
    function getArr() public view returns(uint256[] memory){
        return arr;
    }
    function push(uint256 _x) public {
        arr.push(_x);
    }

    function pop() public {
        arr.pop();
    }
    function getlength() public view returns(uint256 ) {
        return arr.length;
    }
    function removre(uint256 _index) public {
        delete arr[_index];
    }
    function examples() external pure {
        uint256[] memory a = new uint256[](5);
        uint256[][] memory b = new uint256[][](2);
        for(uint256 i = 0;i<b.length;i++){
            b[i] = new uint256[](3);
        }
        b[0][0] = 1;
        b[0][1] = 2;
        b[0][2] = 3;
        b[1][0] = 4;
        b[1][1] = 5;
        b[1][2] = 6;

    }
}

contract ArrayRemoveByShifting{
    uint256[] public arr;

    function remove(uint256 _index) public  {
        require(_index < arr.length,"index out of bounds");
        for(uint i = _index;i<arr.length-1;i++){
            arr[i] = arr[i+1];
        }
        arr.pop();
    }
    function test() external{
        arr = [1,2,3,4];
        remove(2);
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);

        arr = [1];
        remove(0);
        assert(arr.length == 0);
    }
}

contract ArrayReplaceFromEnd{
    uint256[] public arr;

    function remove(uint256 _index)public {
        arr[_index] = arr[arr.length-1];
        arr.pop();
    }
    function test() public{
        arr = [1,2,3,4];
        remove(1);

        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
    }
}