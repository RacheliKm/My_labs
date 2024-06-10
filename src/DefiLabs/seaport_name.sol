//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract name{
// import { Consideration } from "./lib/Consideration.sol";
function _name() internal returns (string memory){
    assembly{
        mstore(0x20, 0x20)
        mstore(0x47, 0x07536561706f7274)
    return(0x20,0x60)
    }
}
}