const AviaSale = artifacts.require("./AviaSale.sol")

module.exports = function(deployer, network, accounts) {
  deployer.deploy(AviaSale);
};
