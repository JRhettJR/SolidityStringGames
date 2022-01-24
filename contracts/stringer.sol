pragma solidity >=0.4.0 <0.7.0;

contract Stringer {
    string private _str;
    event LogMessage(string msg,
                     string val);

    function set(string memory _value) public {
        _str = _value;
    }

    function get() public view returns (string memory){
        return _str;
    }

    function _change() private {
        // Cryptography???
        emit LogMessage("Value was changed",_str);
    }
}