/*
@param NAME (ERC20代幣名稱)
@param SYMBOL (代幣簡稱)
@param DECIMALS_ (精度）
@param TOTALSUPPLY_ (代幣鑄造總發行量)
*/
// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";



/*代幣合約(繼承ERC20)*/
contract teamToken is ERC20 {
    uint8 private _decimals;
    uint256 private _totalSupply;
    address public _owner;

    //建構子
    constructor(string memory name, string memory symbol,uint8 decimals_,uint256 totalSupply_) ERC20(name,symbol){
        _decimals = decimals_;
        _totalSupply = totalSupply_;
        _owner = msg.sender;

    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    function totalSupply() public view override returns (uint256) {
        return _totalSupply;
    }

    function mint(address to, uint256 amount) external{
        _mint(to,amount);
    }

}
