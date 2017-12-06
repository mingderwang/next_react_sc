pragma solidity ^0.4.18;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Storage.sol";

contract TestStorage {

  function testItStoresAValue() public {
    Storage simpleStorage = Storage(DeployedAddresses.Storage());

    simpleStorage.set(89);

    uint expected = 89;

    Assert.equal(simpleStorage.get(), expected, "It should store the value 89.");
  }

}
