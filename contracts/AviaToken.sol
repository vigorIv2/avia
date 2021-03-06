pragma solidity ^0.4.13;

import "zeppelin-solidity/contracts/token/MintableToken.sol";

/**
* AVIA - Smart Contract token
*/
contract AviaToken is MintableToken {
  string public name = "AVIA Token Dummy";
  string public symbol = "AVIA";
  uint256 public decimals = 6;

  function AviaToken(string tokenName, string tokenSymbol) public {
	  name = tokenName;
	  symbol = tokenSymbol;
  }

//  // Overrided destructor
//  function destroy() public onlyOwner {
//      require(mintingFinished);
//      super.destroy();
//  }
//
//  // Overrided destructor companion
//  function destroyAndSend(address _recipient) public onlyOwner {
//      require(mintingFinished);
//      super.destroyAndSend(_recipient);
//  }

  /**
    * @dev Override MintableTokenn.finishMinting() to add canMint modifier
  */  
  function finishMinting() onlyOwner canMint public returns(bool) {
      return super.finishMinting();
  }

}
