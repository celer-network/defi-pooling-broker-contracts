// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

interface IOnchainVaults {
    function depositERC20ToVault(
        uint256 assetId,
        uint256 vaultId,
        uint256 quantizedAmount
    ) external;

    function withdrawFromVault(
        uint256 assetId,
        uint256 vaultId,
        uint256 quantizedAmount
    ) external;

    function getVaultBalance(
        address ethKey,
        uint256 assetId,
        uint256 vaultId
    ) external view returns (uint256);

    function getQuantum(uint256 presumedAssetType) external view returns (uint256);

    function orderRegistryAddress() external view returns (address);
}