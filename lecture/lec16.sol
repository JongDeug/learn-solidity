// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// 상속의 순서 
contract Father{
    event FatherName(string name);
    function who() public virtual{
        emit FatherName("KimJongHwan");
    }
}

contract Mother{
    event MotherName(string name);
    function who() public virtual{
        emit MotherName("LeeJin");
    }
}

contract Son is Father, Mother{
    function who() public override(Father, Mother){
        super.who();
    }
}

// 이 코드를 실행 했을 때 Mother의 who가 실행된다. 가장 최신의 것이 실행된다는 말. super은 Mother을 가리키고 있음.