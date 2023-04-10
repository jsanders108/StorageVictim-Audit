//SPDX-License-Identifier: MIT
pragma solidity 0.8.1;

contract StorageVictim {

   //Hard coded an address in order to run an Echidna test
    address owner = 0xc5Fb0bCf2C7aB7Cb0B9E7d395337fA898D4E7E30;
   
    struct Storage {
        address user;
        uint amount;
    }
 
    mapping(address => Storage) storages;

    function storageVictim() public {
        owner = msg.sender;
    }

    function store(uint _amount) public { 
        Storage memory str;
        str.user = msg.sender;
        str.amount = _amount;
        storages[msg.sender] = str;
    }

    function getStore() public view returns (address, uint) {
        Storage memory str = storages[msg.sender];
        return (str.user, str.amount);
    }
   
    function getOwner() public view returns (address) {
        return owner;
    }

}
