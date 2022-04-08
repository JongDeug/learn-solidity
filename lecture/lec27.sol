// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// try/catch

contract lec27{

    /*
    0.6 버전 이후

    try/catch 왜 써야 하는가?
        기존의 에러 핸들러 assert/revert/require는 에러를 발생시키고 프로그램을 끝냄.
        그러나, try/catch는 에러가 났음에도 프로그램을 종료시키지 않고 어떤 대처를 하게 만들 수 있음.
    
    try/catch 특징
        1. try/catch문 안에서 assert/revert/require를 통해 에러가 난다면 catch는 에러를 잡지 못하고,
        개발자가 의도했다고 판단하여 정상적으로 프로그램을 끝낸다. (밖에서 assert/revert/require를 통해 에러가 난다면 핸들가능)

        2. 3가지 catch
        catch Error(string memory reason) { ... } : revert 나 require을 통해 생성된 에러용도
        catch Panic(uint errorCode) { ... } :  assert 를 통해 생선된 에러가 날 때 이 catch에 잡혀요. 

        그 외에도 
        errorCode 는  솔리디티에서 정의 Panic 에러 별로 나온답니다. 
        0x00: Used for generic compiler inserted panics.
        0x01: If you call assert with an argument that evaluates to false.
        0x11: If an arithmetic operation results in underflow or overflow outside of an unchecked { ... } block.
        0x12; If you divide or modulo by zero (e.g. 5 / 0 or 23 % 0).
        0x21: If you convert a value that is too big or negative into an enum type.
        0x22: If you access a storage byte array that is incorrectly encoded.
        0x31: If you call .pop() on an empty array.
        0x32: If you access an array, bytesN or an array slice at an out-of-bounds or negative index (i.e. x[i] where i >= x.length or i < 0).
        0x41: If you allocate too much memory or create an array that is too large.
        0x51: If you call a zero-initialized variable of internal function type.
        예를들어, 나누기가 0 이 된다면 0x12(=18) errorCode 를 리턴해요. 
        한가지더, Panic은 0.8.0 버전에는 없고 0.8.1 버전 부터 있습니다. 

        catch(bytesmemorylowLevelData){...} : 이 catch는 로우 레벨에러를 잡습니다. 

        3. 어디서 쓰는가?
        외부 스마트 컨트랙의 함수를 부를때 : 다른 스마트 컨트랙을 인스턴스화 하여서, try/catch문이 있는 스마트 컨트랙의 함수를 불러와서 사용.
        외부 스마트 컨트랙을 생성 할 때 : 다른 스마트컨트랙을 인스턴스화 생성 할 때 씀
        스마트컨트랙 내에서 함수를 부를때: this를 통해  try/catch를 씀 
    */
    
}

// 외부 스마트 컨트랙의 함수를 부를 때
contract math{

    function division(uint256 _num1, uint256 _num2) public pure returns(uint256){
        require(_num1 < 10, "num1 should not be more than 10");
        return _num1/_num2;
    }
}

contract runner{
    event catchErr(string _name, string _err);
    event catchPanic(string _name, uint256 _err);
    event catchLowLevelErr(string _name, bytes _err);

    math public mathInstance = new math();

    function playTryCatch(uint256 _num1, uint256 _num2) public returns(uint256, bool){
        
        try mathInstance.division(_num1, _num2) returns(uint256 value){
            return(value, true);
        } catch Error(string memory _err){
            emit catchErr("revert/require", _err);
            return(0, false);
        } catch Panic(uint256 _errorCode){
            emit catchPanic("assertError/Panic", _errorCode);
            return(0, false);
        } catch (bytes memory _errorCode){
            emit catchLowLevelErr("LowLevelError", _errorCode);
            return(0,false);
        }
        // 각각의 에러를 잡지 않을 때는 그냥 lec28과 같이 catch만 써주면 됨.
    }
}