import React, { Component } from "react";
import Student from './components/Student'

class App extends Component {

  state = {
    students : ["Karen", "Jason", "Michael","Spencer", "Spencer"]
  }

  makeStateOneStudent = () => {
    this.setState({
      students: ["Cody"] 
    })
  }

  render() {
    const showStudents = () => {
      return this.state.students.map((student, index) => {
        return <Student age="10" name={student} key={index} />;
      });
    }

    return (
      <div>
        <h1 onClick={this.makeStateOneStudent}>Hello from App</h1>
        {showStudents()}
        <p>copyright 2019</p>
      </div>
    );
  }
}

export default App