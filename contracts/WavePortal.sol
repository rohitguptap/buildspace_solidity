pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
   // uint256 totalWaves;

    struct Waves {
        uint256 waves;
    }

    mapping(address => Waves) public tWaves;
    address public sender;


    constructor() {
        console.log("Hello World, I am a contract and I am smart");
    }

    function wave() public {
         sender = msg.sender;
        tWaves[sender].waves += 1;
        console.log("%s has waved!", sender);
        console.log("Total waves %s ", tWaves[sender].waves);
    }

     function getTotalWaves() public view returns (uint256) {
         console.log("%s sender is !", msg.sender);
        console.log("We have %d total waves!", tWaves[msg.sender].waves);
        return tWaves[msg.sender].waves;
    }

}