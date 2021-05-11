pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    // function arguments are prefixed by convention with an undercore (although it's not required to)

    // the `memory` keyword tells that the value of that argument will be accessed in memory
    // and it's required to use this for all reference types such as arrays, structs, mappings and strings

    function createZombie(string memory _name, uint _dna) public {
        
    }
}
