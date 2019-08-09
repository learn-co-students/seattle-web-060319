import React from 'react';
import TriviaQuestion from './TriviaQuestion';

class Trivia extends React.Component {
  constructor(props) {
    super(props)
    console.log('constructor')
    this.state = {
      questions: props.questions,
      index: 0,
      currentQuestion: props.questions[0]
    }
  }

  static getDerivedStateFromProps(props, state) {
    console.log('get derived state')
    if (props.questions === state.questions) {
      return null
    }

    return {
      questions: props.questions,
      currentQuestion: props.questions[0],
      index: 0
    }
  }

  next = () => {
    let index = this.state.index + 1
    this.setState({
      index: index,
      currentQuestion: this.state.questions[index]
    })
  }

  render() {
    return (
      <div>
        {this.state.index}
        <TriviaQuestion question={this.state.currentQuestion} />
        <button onClick={this.next}>next question</button>
      </div>
    );
  }
}

export default Trivia;
