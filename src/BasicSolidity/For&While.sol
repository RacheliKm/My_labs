//SPDX-License-Identifier:MIT 
pragma solidity ^0.8.24

contract Loop {
    function loop() public {
        for (uint256 index = 0; index < 10; index++) {
            if(index == 3){
                continue;
            }
              if(index == 5){
                break;
              }
        }
        uint256 j;
        while(j < 10){
            j++ ;
        }
    }

}