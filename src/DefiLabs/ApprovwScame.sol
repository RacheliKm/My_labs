// //SPDX-License-Identifier: MIT
// pragma solidity ^0.8.18;

// import "forge-std/Test.sol";
// import "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol"
// contract contractTest is Test {
//     ERC20 ERC20Contract;
//     address alice = vm.addr(1);
//     address eve = vm.addr(2);  

// function testApproveScam() public {
//     ERC20Contract = new ERC20 ;
//     ERC20Contract.mint(1000);
//     ERC20Contract.transfer(address(alice),1000);

//     vm.prank(alice);
//     ERC20Contract.approve(address(eve),type(uint256).max);

//     console.log("Before exploting, Balance of Eve" ,ERC20Contract.balanceOf(eve));
//     console.log("Due to Alice  granted transfer permission to Eve , now Eve can move funds from Alice");
//     vm.prank(Eve);
//     ERC20Contract.transferFrom(address(alice),address(eve),1000);
//     console.log("After exploting ,Balance of eve", ERC2OContract.balanceOf(eve));
//     console.log("Exlpoting completed");

// }
// receive() external payable{}

// }

