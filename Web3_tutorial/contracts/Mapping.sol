// SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Mapping{
    mapping (address => uint256) public mMap;

    function get(address _addr) public view returns(uint256){
        return mMap[_addr];
    }
    function set(address _addr,uint256 _val) public {
        mMap[_addr] = _val;
    }

}
contract NestedMapping{
    mapping(address=>mapping (uint256=>bool)) public nested;

    function get(address _addr,uint256 i)public view returns(bool){
        return nested[_addr][i];
    }
    function set(address _addr, uint256 _i,bool _boo) public {
        nested[_addr][_i] = _boo;
    }
    function remove(address _addr, uint256 _i) public {
        delete nested[_addr][_i];
    }
}