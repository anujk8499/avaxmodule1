// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {

    address public owner;
    mapping(address => bool) public hasVoted;
    uint256 public totalVotes;
    bool public votingOpen;

    constructor() {
        owner = msg.sender;
        totalVotes = 0;
        votingOpen = true;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    modifier canVote() {
        require(votingOpen, "Voting is closed");
        assert(!hasVoted[msg.sender]);
        _;
    }

    function vote(uint256 _age) external canVote {
        if( _age < 18 ){
            revert( "you must be atleast 18 years old to vote" );
        }
        totalVotes++;

        hasVoted[msg.sender] = true;
    }

    function closeVoting() external onlyOwner {
        require(votingOpen, "Voting is already closed");

        votingOpen = false;

    }

}

