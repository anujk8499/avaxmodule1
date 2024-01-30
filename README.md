# Voting System Smart Contract

This Solidity smart contract implements a simple voting system on the Ethereum blockchain. It allows users to vote on a particular proposal, provided they meet the age requirement and have not voted before. The contract is owned by a designated address, which has the authority to close the voting process.

## Smart Contract Details

### Owner
- Address: `owner_address`
- Only the owner can close the voting process.

### Voting Process
- Users can vote by calling the `vote` function with their age as a parameter.
- Only users above 18 years old are eligible to vote.
- Each address can vote only once.
- The voting process can be closed by the owner using the `closeVoting` function.

## Contract Deployment

To deploy this contract, follow these steps:

1. Deploy the contract on the Ethereum blockchain.
2. Interact with the contract using a tool like Remix, MyEtherWallet, or a custom dApp.

## Functions

### `vote(uint256 _age) external canVote`
Allows a user to cast their vote. The user must be above 18 years old, and they can only vote once.

### `closeVoting() external onlyOwner`
Closes the voting process. Only the owner can call this function.


