//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./StorageVictim.sol";

contract FuzzStorageVictim is StorageVictim{

    //This function tests that the owner is always this specific address (hard coded in StorageVictim.sol)
    //The goal is to detect any cases that will make the ownership change to something else
    function echidna_changeOwner() public view returns (bool){
        return owner == 0xc5Fb0bCf2C7aB7Cb0B9E7d395337fA898D4E7E30;
    }

}
