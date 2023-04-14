# Security Audit of StorageVictim.sol

This is a security audit of a Solidity smart contract called StorageVictim.sol. The purpose is to identify vulnerabilities in the code that could result in unanticipated and/or negative outcomes for potential users. The audit was conducted in two stages, "Initial" and "Fixed":

1) "Initial" Stage: The security audit was performed on the original code in the contract and changes were recommended.

2) "Fixed" Stage: The recommended changes were implemented and another security audit was conducted on the fixed contract (to ensure that the changes didn't introduce any additional flaws).  


## Initial Security Audit

The following process was followed to complete the initial security audit on StorageVictim.sol:

1) The contract was upgraded to a newer version of Solidity (0.8x).  
2) The contract code was reviewed manually to 1) understand its mechanics and objectives, and 2) identify any initial obvious security issues.
3) The contract was tested manually to determine if any intended functionality was not working correctly.
4) The static analysis tool called “Slither” was run on the contract to identify any red, yellow, or green issues.
5) Fuzz testing was run on the contract using a tool called “Echidna”. 

The "Initial" folder in this repository contains the Initial Audit pdf, the original version of StorageVictim.sol, and the version of StorageVictim.sol upgraded to a newer version of solidity (0.8.1). It also contains a subfolder containing the smart contracts used for the Echidna Fuzz testing.


## Fixed Security Audit

After implementing the changes to the code recommended by the initial security audit, the folowing process was followed to complete the fixed security audit:

1) The static analysis tool called “Slither” was run on the contract to identify any red, yellow, or green issues.
2) The contract was tested manually to determine if any intended functionality was not working correctly after code changes were implemented.  

The "Fixed" folder in this repository contains the Fixed Audit pdf, as well as the fixed version of StorageVictim.sol (with all the recommended changes implemented). 

## Author

Jason Sanders  
jsanders108@hotmail.com



