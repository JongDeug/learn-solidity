// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// modifier(수정자?)
contract lec30{

    // 반복되는 구문에 modifier를 사용하여 깔끔하게 할 수 있네용
    modifier onlyAdults{
        revert("You are not allowed to pay for the cigarette");
        _; //함수가 여기에 배치됨.
    }

    function buyCigarette() public onlyAdults returns(string memory){
        return "Your payment is succeeded";
    }

    modifier onlyAdults2(uint256 _age){
        require(_age>18, "You are not allowed to pay for the cigarette");
        _; //함수가 여기에 배치됨.
    }

    function buyCigarette(uint256 _age) public onlyAdults2(_age) returns(string memory){
        return "Your payment is succeeded";
    }


    // num의 값은 10이됨.
    uint256 public num = 5;
    modifier numChange{
        _;
        num = 10;
    }

    function numChangeFunction() public numChange{
        num = 15;
    }
}