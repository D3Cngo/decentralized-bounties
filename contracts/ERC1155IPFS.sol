pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract ERC1155IPFS is ERC1155 {
    uint256 public constant METADATA = 1;
    uint256 public constant IPCONTENT = 2;
    uint256 public constant ARCONTENT = 3;
    uint256 public constant HISTORY = 4;

    
mapping (uint => string) metadataRegistry;

constructor() public ERC1155("https://ipfs.moralis.io:2053/ipfs/{id}") {


    metadataRegistry[METADATA] = "QmVoc4E39gRT81zmHNgtmXziMeeUGkwBf5W6ur667DrUEy";
    metadataRegistry[IPCONTENT] = "QmTmK2HKD3z54ugvrAMn18JvrTdg1iBHaxu9EkNHTnUKii";
    metadataRegistry[ARCONTENT] = "QmQu6FgxYwhF9ugQHFNVSuFT462hmkXNfFp7XJUzx2L7Ju";
    metadataRegistry[HISTORY] = "QmQu6FgxYwhF9ugQHFNVSuFT462hmkXNfFp7XJUzx2L7Ju";
    _mint(msg.sender, METADATA, 1, "");
    _mint(msg.sender, IPCONTENT, 1, "");
    _mint(msg.sender, ARCONTENT, 1, "");
    _mint(msg.sender, HISTORY, 1, "");
}
  
  function mint(
        address to,
        uint256 id,
        uint256 amount,
        bytes memory data
        
    )   public virtual  {

        _mint(msg.sender, id, amount, data);
    }
    
    function uri(uint256 _tokenID) override public view returns (string memory) {
    return string(abi.encodePacked("https://ipfs.moralis.io:2053/ipfs/",metadataRegistry[_tokenID]));
    }
    
}