import React, { Component } from "react";
import Student from "./components/Student";
import StudentForm from "./components/StudentForm";

class App extends Component {
  state = {
    students: ["Mike", "Carol", "Alice", "Marcia", "Greg", "Jan", "Peter", "Cindy", "Bobby"]
  };

  addStudent = newStudent => {
    this.setState(prevState => {
      const prevStudents = prevState.students;
      const newStudents = [...prevStudents, newStudent];
      return { students: newStudents };
    });
    // this.setState({
    //   students: [...this.state.students, newStudent]
    // });
  };

  showStudents = () => {
    return this.state.students.map((student, index) => {
      return <Student age="10" name={student} key={index} />;
    });
  };

  render() {
    return (
      <div>
        <StudentForm onAddStudent={this.addStudent} />
        {this.showStudents()}
      </div>
    );
  }
}

export default App;
