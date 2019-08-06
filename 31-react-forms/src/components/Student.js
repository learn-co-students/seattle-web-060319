import React from "react";

const Student = props => {
  return (
    <div>
      <h2>{props.name}</h2>
      <h4>{props.age}</h4>
      <p>I am a mod 4 student</p>
    </div>
  );
};

export default Student;
