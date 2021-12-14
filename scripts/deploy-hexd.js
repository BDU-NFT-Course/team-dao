// scripts/deploy.js
async function main () {
    // We get the contract to deploy
    const HEXToken = await ethers.getContractFactory('HEXDelos');
    console.log('Deploying Contract...');
    const myContract = await HEXToken.deploy();
    await myContract.deployed();
    console.log('Contract deployed to:', myContract.address);
  }
  
  main()
    .then(() => process.exit(0))
    .catch(error => {
      console.error(error);
      process.exit(1);
    });