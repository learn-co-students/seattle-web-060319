import React, { Component } from "react";

class StudentForm extends Component {

  constructor() {
    super();
    this.state = {
      newStudentName: ""
    };
    this.handleSubmitForm = this.handleSubmitForm.bind(this)
  }

  handleChangeName = e => {
    const newName = e.target.value;
    this.setState({
      newStudentName: newName
    });
  };

  handleSubmitForm(e) {
    e.preventDefault();
    this.props.onAddStudent(this.state.newStudentName);
  };

  render() {
    return (
      <div>
        <form onSubmit={this.handleSubmitForm}>
          <label className="new-form" htmlFor="name">
            New Student
          </label>
          <input
            onChange={this.handleChangeName}
            type="text"
            name="name"
            value={this.state.newStudentName}
            placeholder="Enter Name Here"
          />
          <button type="submit">Add Student</button>
        </form>
      </div>
    );
  }
}

export default StudentForm;
