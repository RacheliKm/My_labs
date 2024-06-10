//SPDX-License-Identefier: MIT
pragma solidity ^0.8.24
contract Immutable {

    address public immutable My_Address;
    uint256 public immutable My_Uint;
    
    constructor(uint256 _myUint){
        My_Address =msg.sender;
        My_Uint =_myUint;
        
    }
}