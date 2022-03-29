// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// super : 인스턴스와 자신을 구분 하기 위해 this를 쓰는 것 처럼 부모와 자식을 구별하기 위해 super을 사용한다. super은 부모 클래스를 접근할 수 있도록 해준다.
contract Father{
    event FatherName(string name);
    function who() public virtual{
        emit FatherName("KimJongHwan");
        // emit FatherName("KimJongHwan");
        // emit FatherName("KimJongHwan");
        // emit FatherName("KimJongHwan");
        // emit FatherName("KimJongHwan");
    }
}

contract Son is Father{
    event SonName(string name);
    function who() public override{
        // emit FatherName("KimJongHwan");
        super.who();
        emit SonName("KimJin");
    }
}