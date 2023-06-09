# Security Audit of StorageVictim.sol

This project is a security audit of a Solidity smart contract called StorageVictim.sol. The purpose of the audit was to identify vulnerabilities in the code that could result in unanticipated and/or negative outcomes for potential users. The audit was conducted in two stages, "Initial" and "Fixed":

1) "Initial" stage: The security audit was performed on the original code in the contract and changes were recommended.

2) "Fixed" stage: The recommended changes were implemented and another security audit was conducted on the fixed contract (to ensure that the changes didn't introduce any additional flaws).  


## Initial Security Audit

The following process was followed to complete the Initial Security Audit on StorageVictim.sol:

1) The contract was upgraded to a newer version of Solidity (0.8x).  
2) The contract code was reviewed manually to a) understand its mechanics and objectives, and b) identify any initial obvious security issues.
3) The contract was tested manually to determine if any intended functionality was not working correctly.
4) The static analysis tool called “Slither” was run on the contract to identify any red, yellow, or green issues.
5) Fuzz testing was run on the contract using a tool called “Echidna”. 

The "Initial" folder in this repository contains a writeup of the results of the audit ("StorageVictim Audit - Initial.pdf"), the original version of StorageVictim.sol, and the version of StorageVictim.sol upgraded to a newer version of solidity (0.8.1). It also contains a subfolder containing the smart contracts used for the Echidna fuzz testing.


## Fixed Security Audit

After implementing the changes to the code recommended by the Initial Security Audit, the folowing process was followed to complete the Fixed Security Audit:

1) The static analysis tool called “Slither” was run on the contract to identify any red, yellow, or green issues.
2) The contract was tested manually to determine if any intended functionality was not working correctly after code changes were implemented.  

The "Fixed" folder in this repository contains a writeup of the results of the audit ("StorageVictim Audit - Fixed.pdf"), as well as the fixed version of StorageVictim.sol (with all the recommended changes implemented). 



## Author

Jason Sanders  
jsanders108@hotmail.com



