# Bounty Marketplace

---
## Background

The `Marketplace` is a market where where people can either sponsor, claim, and dispute bounty NFTs — [ERC 721](https://eips.ethereum.org/EIPS/eip-721) or [ERC 1155](https://eips.ethereum.org/EIPS/eip-1155) tokens — at a fixed price ( what we'll refer to as a "Bounty listing").

### Direct Listings
An NFT owner (or 'bounty sponsor') can list their bounties for claim at a fixed price. A potential contribitor can claim the bounty by submitting their work via IPFS, and going through the review period.

To list bounties, the lister specifies —

| Parameter | Description |
| --- | --- |
| `assetContract` | The contract address of the NFTs being listed for sale |
| `tokenId` | The token ID on the 'assetContract' of the NFTs to list for sale. |
| `startTime` | The unix timestamp after which NFTs can be bought from the listing. |
| `secondsUntilEndTime` | The number of seconds after which bounties can no longer be claimed. |
| `currencyToAccept` | The address of the currency accepted by the listing. Either an ERC20 token or the chain's native token (e.g. most likely will be xDai). |
| `claimReward` | The amount offered for the bounty. |

### Why we're building the Bounty Marketplace

We're building this for DAOs and projects who want to encourage content creation in their *own* community that lives within the their own DAO-stack, rather than use an external market, which adds to their stack and becomes one additional headache to handle.

### EIPs implemented / supported

To be able to escrow bounty NFTs in the case of auctions, Marketplace implements the receiver interfaces for [ERC1155](https://eips.ethereum.org/EIPS/eip-1155) and [ERC721](https://eips.ethereum.org/EIPS/eip-721) tokens. 

To enable meta-transactions (gasless) for all external+public functions of the contract, Marketplace implements [ERC2771](https://eips.ethereum.org/EIPS/eip-2771). 

Marketplace also implements [ERC2981](https://eips.ethereum.org/EIPS/eip-2981) for the distribution of royalties on direct and auction listings.

### Currency transfers

The `Marketplace` contract supports both ERC20 currencies, and a chain's native token (e.g. xDai for Gnosis chain). This means that any action that involves transferring currency (e.g. buying a token from a direct listing) can be performed with either a DAO's own token or the chain's native token.