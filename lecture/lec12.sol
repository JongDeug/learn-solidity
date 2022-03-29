// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// 상속3 - 두 개 이상 상속하기
contract Father{
    uint public fatherMoney = 100;
    function getFatherName() public pure returns(string memory){
        return "KimJung";
    }
    function getMoney() public view virtual returns(uint256){
        return fatherMoney;
    }
}

contract Mother{
    uint public motherMoney = 500;
    function getMotherName() public pure returns(string memory){
        return "BeaYoung";
    }
    function getMoney() public view virtual returns(uint256){
        return motherMoney;
    }
}

contract Son is Father, Mother{

    function getMoney() public view override(Father, Mother) returns(uint256){
        return fatherMoney+motherMoney;
    }
}