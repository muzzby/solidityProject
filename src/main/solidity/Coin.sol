// SPDX-License-Identifier: SimPL-2.0
pragma solidity >0.4.22;

contract Coin {

    //铸币地址
    address public minter;

    //用户地址账号的映射
    mapping(address=>uint) balances;

    event Sent(address from ,address to,uint amount);

    constructor() public{
        minter = msg.sender;
    }

    //铸币
    function mint(address receiver,uint amount) public{
        require(msg.sender = minter);
        balances[receiver] += amount;
    }

    //发币
    function send(address receiver,uint amount)public{
        require(balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender,receiver,amount);
    }

}