pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
    }

    // define return values by adding the keyword `returns` followed by the return value within parenthesis

    // the keyword `view` defines a function that only reads data from the contract storage, but doesn't modify anything

    // the keyword `pure` defines a function that does not access the contract storage at all, neither for writing or reading

    function _generateRandomDna(string memory _str) private view returns (uint) {
        
    }

}
