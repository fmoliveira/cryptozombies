pragma solidity >=0.5.0 <0.6.0;

import "./zombiefactory.sol";

contract ZombieFeeding is ZombieFactory {

  // state variables, declared outside functions, are of type `storage` by default meaning they are stored permanently on the blockchain
  // local variables, declared inside functions, are of type `memory` by default and will disappear when the function ends

  // there are cases when you may need to explicitly define whether you want to access a variable from storage or memory
  // use the respective keywords `storage` and `memory` to do so

  function feedAndMultiply(uint _zombieId, uint _targetDna) public {
      require(msg.sender == zombieToOwner[_zombieId]);
      Zombie storage myZombie = zombies[_zombieId];
  }

}
