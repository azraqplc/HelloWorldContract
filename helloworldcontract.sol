pragma solidity ^0.4.0;


contract HelloWorldContract {
    string word = "Hello World";
    address issuer;

    function helloworld(){
        issuer = msg.sender;
    }

    function getword() constant returns(string){
        return word;

    }

    function setword(string newWord) returns(string) {
        if (issuer != msg.sender) {
            return "This is not the creator!!";
        }else {
            word = newWord;
            return word;
        }
    }
}
