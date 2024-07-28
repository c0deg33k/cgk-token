<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/c0deg33k/">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">cgk-token</h3>

  <p align="center">
    project_description
    <br />
    <a href="https://github.com/c0deg33k/cgk-token"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/c0deg33k/cgk-token">View Demo</a>
    ·
    <a href="https://github.com/c0deg33k/cgk-token/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    ·
    <a href="https://github.com/c0deg33k/cgk-token/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#deployment">Deployment</a></li>
    <ul>
        <li><a href="#deploying-locally-on-anvil">Deploying locally on Anvil</a></li>
        <li><a href="#deploying-and-verifying-on-sepolia-testnet">Deploying and verifying on Sepolia Testnet</a></li>
        <li><a href="#interacting-with-the-contract">Interacting with the contract</a></li>
        <li><a href="#testing">Testing</a></li>
        <li><a href="#help">Help</a></li>
        <li><a href="#debugging">Debugging</a></li>
      </ul>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

CodeGeek Token (CGK) is a decentralized, community-driven project that aims to empower developers, tech enthusiasts, and innovators to build, create, and thrive in the digital landscape.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

* [![Solidity][Solidity.com]][Solidity-url]
* [![Foundry][Foundry.com]][Foundry-url]
* [![Makefile][Makefile.com]][Makefile-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

You'll need,
* Visual Studio Code
  Download and install VScode from [code.visualstudio.com](https://code.visualstudio.com/download)
  - Install the following extension:
  * Solidity
* Foundry
  Get the latest version of Foundry
  ```sh
  curl -L https://foundry.paradigm.xyz | bash
  ```

### Installation

Clone the repo
   ```sh
   git clone https://github.com/c0deg33k/cgk-token.git
   
   cd cgk-token
   
   make compile
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Deployment

### Deploying locally on Anvil
1. Create an anvil instance in a seperate terminal
   ```sh
   make anvil
   ```
2. Deploy the contract
   ```sh
   make deploy
   ```
### Deploying and verifying on Sepolia Testnet
1. Install Metamask extension on your browser and create a new account.
   * Get testnet ETH & LINK
     - Head over to [faucets.chain.link](https://faucets.chain.link/) and get some testnet ETH & LINK.

2. Head over to [Alchemy](https://www.alchemy.com/), create a test application on sepoliaETH Testnet and get your API key.
3. Create a ```.env``` file in your project root directory and add your Sepolia RPC URL, private key, and [Etherscan API key](https://etherscan.io/) as follows:
    ```makefile
   SEPOLIA_RPC_URL=<your_sepolia_rpc_url>
   PRIVATE_KEY=<your_metamask_account_private_key> ## NEVER INCLUDE A PRVATE KEY WITH YOUR CRYPTO ASSETS. USE A TEST WALLET PRIVATE KEY.
   ETHERSCAN_API_KEY=<your_etherscan_api_key>
   ```
   * Run the following terminalcommand to initiate the ```.env```
    ```sh
    source .env
    ```
4. Deploy the contract to Sepolia testnet
   ```sh
   make deploy ARGS="--network sepolia"
   ```

### Interacting with the contract
After deploying to a testnet or local net, you can run the following scripts. 

Estimate gas spent
```sh
make snapshot
```
And you'll see an output file called `.gas-snapshot`
Format the code repo
```sh
make fmt
```


### Testing
Run all tests, using the following command
```sh
make test
```
or
```sh
forge test --match-test <TEST_NAME>
```
to run a single test



### Help
For help about usage
```sh
make help
```
### Debugging
To get more verbosity as you test run test commands with `-v`
```sh
forge test -vvv
```
or
```sh
forge test --match-test <TEST_NAME> -vvvv
```
The more the `v`(1-5) the more verbose the output.

_For more examples, please refer to the [Foundry Documentation](https://book.getfoundry.sh/)_

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Cyfrin Updraft](https://updraft.cyfrin.io/courses)
* [Best-README-Template](https://github.com/othneildrew/Best-README-Template/tree/master)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Author - [@c0deg33k](https://twitter.com/c0deg33k)

Project Link: [https://github.com/c0deg33k/cgk-token](https://github.com/c0deg33k/cgk-token)

Drop me a Follow while at it.

[![c0deg33k Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/c0deg33k)
[![c0deg33k Linkedin](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/clinton-kariuki/)
<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/c0deg33k/cgk-token.svg?style=for-the-badge
[contributors-url]: https://github.com/c0deg33k/cgk-token/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/c0deg33k/cgk-token.svg?style=for-the-badge
[forks-url]: https://github.com/c0deg33k/cgk-token/network/members
[stars-shield]: https://img.shields.io/github/stars/c0deg33k/cgk-token.svg?style=for-the-badge
[stars-url]: https://github.com/c0deg33k/cgk-token/stargazers
[issues-shield]: https://img.shields.io/github/issues/c0deg33k/cgk-token.svg?style=for-the-badge
[issues-url]: https://github.com/c0deg33k/cgk-token/issues
[license-shield]: https://img.shields.io/github/license/c0deg33k/cgk-token.svg?style=for-the-badge
[license-url]: https://github.com/c0deg33k/cgk-token/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/clinton-kariuki
[Solidity.com]: https://img.shields.io/badge/Solidity-000000?style=for-the-badge&logo=solidity&logoColor=white
[Solidity-url]: https://soliditylang.org
[Foundry.com]: https://img.shields.io/badge/Foundry-000000?style=for-the-badge&logo=foundry&logoColor=white
[Foundry-url]: https://getfoundry.sh/
[Makefile.com]: https://img.shields.io/badge/Makefile-000000?style=for-the-badge&logo=makefile&logoColor=white
[Makefile-url]: https://www.gnu.org/software/make/