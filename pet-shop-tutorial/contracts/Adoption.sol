pragma solidity ^0.4.17;

contract Adoption {

    address[16] public adopters;

    function adopt(uint petId) public returns (uint) {
        require(petId >=0 && petId <= 15);
        adopters[petId] = msg.sender;
        return petId;
    }

    function release(uint petId) public returns (uint) {
        require(petId >=0 && petId <= 15);
        adopters[petId] = 0x0000000000000000000000000000000000000000;
        return petId;
    }

    function getAdopters() public view returns (address[16]) {
        return adopters;
    }

}