pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    // solidity functions are public by default
    // it's a good practice to mark your functions as private by default to prevent being vulnerable to attacks

    // private functions are prefixed by convention with an underscore

    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
    }

}
