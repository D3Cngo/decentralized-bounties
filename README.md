# oneDAO Decentralized Bounties

This is a pre-alpha implementation of oneDAOs decentralized content bounty system (in other words, do not even try to deploy it - there are still tons of work to be done).

## The Protocol

This decentralized protocol aims to tackle the difficult nature of completely decentralized content bounty systems through the use of NFT minting and the metadata that can be set by URI pointing to decentralized storage networks like IPFS and Arweave. 

Key Concepts:

**Bounties as NFTs**

- Each content piece for bounties is minted as an ERC1155 NFT. Native or ERC20 tokens, such as xDai or FOX, are wrapped into the ERC1155.
- When bounties are claimed and passes through a 5-day peer review period, the Bounty NFTs are released to the claimee, which he or she can then unwrap the reward.
- Alternative methods of reward redemptions are available and under review; for example, a simple smart contract in which the NFT can be exchanged for the reward amount. 
- When in need of content update(s) or improvements, anyone can initiate the same claim process in which the 5-day peer review period will initiate.

**Encouraging Content Creation**

- Workstreams, or the DAO in general, will be the primary minters of these bounty NFTs. However, due to the decentralized nature of the system, _anyone_ will be able to "sponsor" a bounty by minting an NFT.
- Those that successfully sponsor a content bounty will receive a royalty, practically in the same way that NFT creators on Opensea receive royalties on subsequent sales. This will hopefully encourage the entire DAO, our partners, and contributors to actively engage in the sponsoring and creation of content.
- Those that successfully claimed a bounty on a particular NFT will also receive royalty each time an article is updated and a new NFT is claimed and rewarded. This will hopefully encourage everyone and anyone to participate in the content generation ecosystem.

**GlobalFOX Leaders & Reputation System**

- GlobalFOX Language Leaders as well as trusted contributors may have a shorter claim waiting period than "regular" users.

**Handling Disputes**

- A mini-governance system will be built into the protocol. As not many participants are expected to conduct in voting/peer reviews, language leaders and workstream leaders will hold significantly higher weight in vote power. Of course, everything at the moment is experimental and parameters are subject to change.

### Contract Deployments

Currently using ThirdWeb's implementation of EIP1967 and ERC2771 for a proxied upgradeable protocol.

**Deployed chains**

- **mainnet**: NA
- **testnet**: Rinkeby (Ethereum)

## Shoutout

Special thanks to NFTLabs / ThirdWeb for the help with getting this project finally started.

## License

[Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0.txt)
