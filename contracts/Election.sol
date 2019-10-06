pragma solidity 0.5.8;

contract Election {
    //model a candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    //store candidates
    //fetch candidates
    mapping(uint => Candidate) public candidates;
    //store candidate count
    uint public candidateCount;

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string memory _name) private {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount,_name,0);
    }



}