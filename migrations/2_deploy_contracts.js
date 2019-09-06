var Parinsurance = artifacts.require("./Parinsurance.sol");

module.exports = function(deployer) {
  deployer.deploy(Parinsurance);
};