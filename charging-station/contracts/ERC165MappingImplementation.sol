pragma solidity ^0.4.24;

import "./ERC165.sol";

contract ERC165MappingImplementation is ERC165 {
    /// @dev You must not set element 0xffffffff to true
    mapping(bytes4 => bool) internal supportedInterfaces;

    constructor() internal {
        supportedInterfaces[this.supportsInterface.selector] = true;
    }

    function supportsInterface(bytes4 interfaceID) external view returns (bool) {
        return supportedInterfaces[interfaceID];
    }

    function getERC165MappingImplementationInterfaceId() public pure returns (bytes4) { return this.supportsInterface.selector;}
}