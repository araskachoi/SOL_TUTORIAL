pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    function testUserCanAdoptPet() public {
        uint returnedId = adoption.adopt(8);
        uint expected = 8;

        Assert.equal(returnedId, expected, "Adoption of pet ID 8 should be recorded");
    }

    function testGetAdopterAddressByPetId() public {
        address expected = this;
        //expected owner is this contract
        address adopter = adoption.adopters(8);

        Assert.equal(adopter, expected, "Owner of pet ID 8 should be recorded");
    }
    
    function testGetAdopterAddressByPetIdInArray() public {
        address expected = this;
        //expected owner is this contract
        address[16] memory adopters = adoption.getAdopters();
        //store adopters in memory rather than contract's storage

        Assert.equal(adopters[8], expected, "Owner of pet ID 8 should be recorded.");
    }
}