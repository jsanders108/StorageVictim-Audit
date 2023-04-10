//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageVictim {

   address owner;
   
   //This struct contains the "amount" of storage allocated to a "user"
   struct Storage {
       address user;
       uint amount;
   }

   //The amount of storage allocated to each user is stored in a mapping. 
   mapping(address => Storage) storages;

   //The "owner" can be set to whomever calls this public function
   //This is not the best way to set an owner of a contract -- it is better to do this using a constructor
   function storageVictim() public {
       owner = msg.sender;
   }


   //This function allows the caller (msg.sender) to enter their storage allocation (amount) into a struct in the mapping
   //Caution: the person who calls this function can easily change their "amount" at any time, which may be problematic (depending on the contract's objectives)
   function store(uint _amount) public { 
       Storage memory str;
       str.user = msg.sender;
       str.amount = _amount;
       storages[msg.sender] = str;
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


