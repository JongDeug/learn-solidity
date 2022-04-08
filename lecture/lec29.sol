// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// function 5 함수 리턴값 변수 명시
contract lec29{

    function add(uint256 _num1, uint256 _num2) public pure returns(uint256){
        uint256 total = _num1 + _num2;
        return total;
    }

    // 오오 근데 왜 쓰는거임? 아래 함수를 보시오! 
    function add2(uint256 _num1, uint256 _num2) public pure returns(uint256 total){
        total = _num1 + _num2;
        return total;
    }

    // // 만약 returns 값들이 많아지면?
    // function add3(uint256 _num1, uint256 _num2) public pure returns(uint256, uint256, uint256, uint256, uint256){
    //     uint256 total = _num1 + _num2;
    //     return total;
    // }

    // // 만약 returns 값들이 많아지면?
    // function add4(uint256 _num1, uint256 _num2) public pure returns(uint256 total, uint256 height, uint256 width, uint256 power){
    //     uint256 total = _num1 + _num2;
    //     return total;
    // }

}