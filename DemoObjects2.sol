pragma solidity ^0.5.0;
contract Student {
    
    uint public age;
    string name;
     function getName() public view returns(string memory){
        return name;    
    }
    function setName(string memory _name) public {
        name = _name;
    }
}
contract client{
    function createObj(string memory name) public returns (string memory) {
        Student st = new Student("Hello");
        return st.getName();
    }
    
 
}


