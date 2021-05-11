pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    // defines a dynamic array (could add a number between brackets to set a fixed length)
    // the `public` keyword creates a getter method that other contracts can access, but not write
    Zombie[] public zombies;
}
