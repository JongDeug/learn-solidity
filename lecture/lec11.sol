// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// 상속2 
contract Father{
    string public familyName = "Kim";
    string public givenName = "Jong";
    uint256 public money = 100;

    constructor(string memory _givenName) public{
        givenName = _givenName;
    }

    function getFamilyName() view public returns(string memory){
        return familyName;
    }

    function getGivenName() view public returns(string memory){
        return givenName;
    }

    function getMoney() view public virtual returns(uint256){
        return money;
    }
}

contract Son is Father{

    constructor() Father("James"){
    }
    
    uint256 public earning = 0;
    function work() public {
        earning += 100;
    }
    function getMoney() view  public override returns(uint256){
        return money+earning;
    }
}