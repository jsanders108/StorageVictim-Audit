For this project, I created two separate folders: 1) Initial, and 2) Fixed

The "Initial" folder contains the initial Audit pdf (and code) before recommended fixes were made to the contract's code. It also contains a subfolder containing the contracts used for the Echidna Fuzz testing.

The "Fixed" folder contains the final Audit pdf (and code) after all the recommended fixes were implemented.  


# Security Audit of StorageVictim.sol

This is a security audit of a Solidity smart contract called StorageVictim.sol. The purpose is to identify vulnerabilities in the code that could result in unanticipated and/or negative outcomes for potential users. The audit was conducted in two stages, "Initial" and "Fixed":

    1) "Initial" Stage: The security audit was performed on the original code in the contract and changes were recommended.

    2) "Fixed" Stage: The recommended changes were implemented and another security audit was conducted on the fixed contract.  


## Initial Audit

This audit was conducted in two stages. The 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
pragma solidity ^0.8.4;

contract HelloWorld {
    function sayHello() public pure returns (string memory) {
        return "Hello World!";
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the sayHello function. Click on the "HelloWorld" contract in the left-hand sidebar, and then click on the "sayHello" function. Finally, click on the "transact" button to execute the function and retrieve the "Hello World!" message.

## Authors

Metacrafter Chris  
[@metacraftersio](https://twitter.com/metacraftersio)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
