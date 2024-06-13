//SPDX-Licenese-Identefier:MIT
pragma solidity ^0.8.24

contract Array {

uint256[] public arr;
uint256[] public arr2 = [1,2,3];
uint256[10] public myFixedSizeArr;

function get(uint256 i) public view returns(uint256){
    return arr[i];
}

function getArr() public view returns (uint256[] memory){
    return arr;
}

function push(uint256 i) public {
    arr.push(i);
}

function pop() public {
    arr.pop();
}

function getLength() public view returns(uint256){
    return arr.length;
}

function remove(uint256 index) public{
    delete arr[index];
}

function examples()external{
    uint256 memory a = new uint256[](5);
}
}
contract ArrayRemoveByShifting {
function removeIndex(uint256 _index){
    requirn(_index < arr.length, "index out of bond")

    for(uint256 i=_index; i<arr.length; i++){
        arr[i] = arr[i+1];
    }
    arr.pop();

}

function test() external{
    arr = [1,2,3,4,5];
    removeIndex(2);
    assert(arr[0] == 1);
    assert(arr[1] == 2);
    assert(arr[2] == 4);
    assert(arr[3] == 5);
    assert(arr.length == 4);

    arr=[1];
    removeIndex(0);

    assert(arr.length == 0);


}
contract ArrayReplaceFromEnd {
    uint256[] public arr;

    function remove(uint256 _index) public {
        arr[_index] = arr[arr.length -1];
        arr.pop();

        function() public{
            arr = [1,2,3,4];
            remove(1);
           
           assert(arr.length == 3);

           assert(arr[0] == 1);
           assert(arr[1] == 2);
           assert(arr[2] == 3);

           remove(2);

           assert(arr.length == 2);
           assert(arr[0] == 1);
           assert(arr[1] == 4);

        }
    }

}
}