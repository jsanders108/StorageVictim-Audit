//SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract StorageVictim {

    address owner;
   
    //This struct contains the "amount" of storage allocated to a "user"
    struct Storage {
        address user;
        uint amount;
    }

    //The amount of storage allocated to each user is stored in a mapping. 
    mapping(address => Storage) storages;


    //The owner of the contract is set to the address of the deployer of the contract.
    constructor() {
        owner = msg.sender; 
    }

    //This function allows the caller (msg.sender) to enter their storage allocation (amount) into a struct in the mapping
    //Caution: the person who calls this function can easily change their "amount" at any time, which may be problematic (depending on the contract's objectives)
    function store(uint amount) public {
        storages[msg.sender] = Storage(msg.sender, amount); 
    }


   //This function allows the caller (msg.sender) to view their allocated storage amount.
   function getStore() public view returns (address, uint) {
       Storage memory str = storages[msg.sender];
       return (str.user, str.amount);
   }
   
   //This function allows the caller (msg.sender) to view whom the "owner" is. 
   function getOwner() public view returns (address) {
       return owner;
   }

}
