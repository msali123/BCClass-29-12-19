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
    function createObj(string memory name) public returns (string memory, address) {
        Student st = new Student();
        st.setName(name);
        address a = address(st);
        return (st.getName(), a);
    }
    
    function getObj(address ad) public returns (string memory) {
        Student st = Student(ad);
        return st.getName();
    }
}
