require('@nomiclabs/hardhat-waffle');

require('dotenv').config();

//https://replit.com/@RohitCryptocurr/waveportal-baseline-student#src/App.js
//https://rinkeby.etherscan.io/address/0xbE934E79C9BC507a7E6Ddaf836bC894F1113c5AB
module.exports = {
  solidity: '0.8.0',
  networks: {
    rinkeby: {
      url: process.env.STAGING_ALCHEMY_KEY,
      accounts: [process.env.PRIVATE_KEY],    },
  },
};