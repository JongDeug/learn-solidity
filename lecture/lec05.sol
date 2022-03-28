// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract lec5{

    /*
    function 이름() public { //(public, private, internal, external) 변경가능.
        //내용
    }
    */
    
    /*
    public : 모든 곳에서 접근 가능
    external : public 처럼 모든 곳에서 접근 가능하나, external이 정의된 자기 자신 컨트랙 내에서 접근 불가, 오직 밖에서만 접근 가능
    private : 오직 private이 정의된 자기 컨트랙에서만 가능(상속 받은 자식도 불가능)
    internal: private 처럼 오직 internal이 정의된 자기 컨트랙에서만 가능하고 internal이 정의된 컨트랙을 상속 받은 자식은 접근 가능
    */

    // 1. public
    uint256 public a = 5;

    // 2. private
    uint256 private a2 = 5;
}

contract public_example{
    uint256 public a = 3;

    function changeA(uint256 _value) public{
        a = _value;
    }

    //public, private, external, internal 넣어보면 됨.
    function get_a() view external returns(uint256){
        return a;
    }
}

contract public_example_2{
    public_example instance = new public_example();

    function changeA_2(uint256 _value) public{
        instance.changeA(_value);
    }

    function use_public_example_a() view public returns(uint256){
        return instance.get_a();
    }
}