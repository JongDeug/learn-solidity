// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// try/catch

// 외부 스마트 컨트랙을 생성할 때
contract character{
    string private name;
    uint256 private power;

    constructor(string memory _name, uint256 _power){
        // revert("error"); // 조건 없이 에러발생 revert
        name = _name;
        power = _power;
    }
}

contract runner{
    event catchOnly(string _name, string _err);

    function playTryCatch(string memory _name, uint256 _power) public returns(bool successOrFail){
        
        try new character(_name, _power){
            revert("errors in the try/catch block"); // revert/require/assert를 try/catch안에 넣으면 catch로 잡지 못함. 개발자가 의도한걸로 앎.
            return(true);
        } catch {
            emit catchOnly("catch", "Errors!!");
            return(false);
        }
    }
}

// 스마트 컨트랙 내에서 함수를 부를 때
contract runner2{
    event catchOnly(string _name, string _err);

    function simple() public pure returns(uint256){
        revert("error");
        return 4;
    }
    
    function playTryCatch() public returns(uint256, bool){
        try this.simple() returns(uint256 _value){
            // revert("error");
            return(_value,true);
        } catch {
            emit catchOnly("catch","Errors!!");
            return(0,false);
        }
    }
}