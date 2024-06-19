//SPDX-License-Identefier:MIT
pragma solidity ^0.8.24
contract ToDo {
    struct ToDo {
        string text;
        bool compldted;
    }
    ToDo [] public todos;
    function create(string calldata _text) public {
        todos.push(ToDo(_text, false));
        todos.push({text: _text, completed: false});
        ToDo memory todo;
        todo.text  = _text;

    }
    function get(uint256 _index) public view returns (string memory text, bool completed){
        ToDo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }
    function updatetext(uint256 _index, string calldata _text) public {
        ToDo storage todo = todos[_index];
        todo.text = _text;
    }
    function togglecompleted(uint256 _idex) public {
       ToDo storage todo = todos[_index];
       todo.completed = !todo.completed;
    }
}