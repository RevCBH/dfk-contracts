//SPDX-License-Identifier: Unlicense
//solhint-disable func-name-mixedcase
pragma solidity ^0.8.0;

import "./IHeroTypes.sol";
import "./ICrystalTypes.sol";

interface IHeros {
    function DEFAULT_ADMIN_ROLE() external view returns (bytes32);

    function HERO_MODERATOR_ROLE() external view returns (bytes32);

    function MINTER_ROLE() external view returns (bytes32);

    function MODERATOR_ROLE() external view returns (bytes32);

    function PAUSER_ROLE() external view returns (bytes32);

    function approve(address to, uint256 tokenId) external;

    function balanceOf(address owner) external view returns (uint256);

    function burn(uint256 tokenId) external;

    function createHero(
        uint256 _statGenes,
        uint256 _visualGenes,
        uint8 _rarity,
        bool _shiny,
        HeroCrystal calldata _crystal
    ) external returns (uint256);

    function getApproved(uint256 tokenId) external view returns (address);

    function getHero(uint256 _id) external view returns (Hero calldata);

    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    function getRoleMember(bytes32 role, uint256 index)
        external
        view
        returns (address);

    function getRoleMemberCount(bytes32 role) external view returns (uint256);

    function getUserHeroes(address _address)
        external
        view
        returns (uint256[] calldata);

    function grantRole(bytes32 role, address account) external;

    function hasRole(bytes32 role, address account)
        external
        view
        returns (bool);

    function initialize(
        string calldata _name,
        string calldata _symbol,
        string calldata _url,
        address _statScienceAddress
    ) external;

    function initialize(
        string calldata _name,
        string calldata _symbol,
        string calldata _baseTokenURI
    ) external;

    function isApprovedForAll(address owner, address operator)
        external
        view
        returns (bool);

    function mint(address to) external;

    function name() external view returns (string calldata);

    function ownerOf(uint256 tokenId) external view returns (address);

    function pause() external;

    function paused() external view returns (bool);

    function renounceRole(bytes32 role, address account) external;

    function revokeRole(bytes32 role, address account) external;

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes calldata _data
    ) external;

    function setApprovalForAll(address operator, bool approved) external;

    function setStatScienceAddress(address _statScienceAddress) external;

    function supportsInterface(bytes4 interfaceId) external view returns (bool);

    function symbol() external view returns (string calldata);

    function tokenByIndex(uint256 index) external view returns (uint256);

    function tokenOfOwnerByIndex(address owner, uint256 index)
        external
        view
        returns (uint256);

    function tokenURI(uint256 tokenId) external view returns (string calldata);

    function totalSupply() external view returns (uint256);

    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    function unpause() external;

    function updateHero(Hero calldata _hero) external;

    function userHeroes(address, uint256) external view returns (uint256);
}
