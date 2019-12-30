pragma solidity ^0.5.0;
contract Student {
    
    uint public age;
    string name;
    event log(string);
    constructor(string memory a) public payable {
        name = a;
        emit log("In defult constructor");
    }
    function getName() public view returns(string memory){
        return name;    
    }
    function setName(string memory _name) public {
        name = _name;
    }
}
contract client{
    mapping(address => Student) studentList;
    function createObj(string memory name) public returns (string memory) {
        Student st = new Student("Hello");
        address a= address(st);
        studentList[a]= st;
        return st.getName();
    }
    
 
}


