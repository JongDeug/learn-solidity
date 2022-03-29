// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// funcion 정의
contract lec4{

    /*
    function 이름() public { //(public, private, internal, external) 변경가능.
        //내용
    }
    function 이름() public return's'(타입){ 
        //내용
    }
    */
    // 1. Parameter 와 Return 값이 없는 fucntion 정의
    // 2. Parameter는 있고, Return 값이 없는 function 정의
    // 3. Parameter는 있고, Return 값이 있는 function 정의

    uint256 public a = 3;

     // 1. Parameter 와 Return 값이 없는 fucntion 정의
     function changeA1() public{
         a = 5;
     }

     // 2. Parameter는 있고, Return 값이 없는 function 정의
     function changeA2(uint256 _value) public{
         a = _value;
     }

     // 3. Parameter는 있고, Return 값이 있는 function 정의
     function changeA3(uint256 _value) public returns(uint256){
         a = _value;
         return a;
     }
}
    
