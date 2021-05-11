pragma solidity ^0.4.25;

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

    // use the hash function `keccak256` (a version of SHA3) to hash an input of type bytes

    // use the function `abi.encodePacked` to pack any parameters into bytes

    // note: secure random-number generation in blockchain is very difficult, the method used here is insecure

    // use types as functions to typecast a value

    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

}
