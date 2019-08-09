import React from 'react';

class TriviaQuestion extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    return (
      <div>
        <p>{this.props.question && this.props.question.question}</p>
      </div>
    );
  }
}

export default TriviaQuestion;
