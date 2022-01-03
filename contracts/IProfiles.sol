//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

interface IProfiles {
    function addressToIndex(address) external view returns (uint256);

    function addresses(uint256) external view returns (address);

    function changeHeroPic(uint256 profileId, uint256 _heroId)
        external
        returns (bool success);

    function changeName(uint256 profileId, string calldata _name)
        external
        returns (bool success);

    function changePic(uint256 profileId, uint8 _picId)
        external
        returns (bool success);

    function createProfile(string calldata _name, uint8 _picId)
        external
        returns (bool success);

    function getAddressByName(string calldata name)
        external
        view
        returns (address profileAddress);

    function getProfileByAddress(address profileAddress)
        external
        view
        returns (
            uint256 _id,
            address _owner,
            string calldata _name,
            uint64 _created,
            uint8 _picId,
            uint256 _heroId
        );

    function getProfileByName(string calldata name)
        external
        view
        returns (
            uint256 _id,
            address _owner,
            string calldata _name,
            uint64 _created,
            uint8 _picId,
            uint256 _heroId
        );

    function getProfileCount() external view returns (uint256 count);

    function heroesNftContract() external view returns (address);

    function nameTaken(string calldata name) external view returns (bool taken);

    function nameToIndex(string calldata) external view returns (uint256);

    function owner() external view returns (address);

    function profileExists(address profileAddress)
        external
        view
        returns (bool exists);

    function profiles(uint256)
        external
        view
        returns (
            uint256 id,
            address owner,
            string calldata name,
            uint64 created,
            uint8 picId,
            uint256 heroId,
            bool set
        );

    function renounceOwnership() external;

    function setHeroes(address _address) external returns (bool success);

    function setNameLengths(uint8 _min, uint8 _max)
        external
        returns (bool success);

    function setPicMax(uint8 _max) external returns (bool success);

    function transferOwnership(address newOwner) external;
}
