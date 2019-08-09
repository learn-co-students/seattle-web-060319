import React from 'react';
import './App.css';

import Trivia from './components/Trivia'

class App extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      isLoading: true,
      questions: [],
    }
  }

  componentDidMount() {
    this.loadQuestions()
  }

  loadQuestions = () => {
    fetch('https://opentdb.com/api.php?amount=10')
    .then(res => res.json())
    .then(data => {
      console.log('got new questions', data.results[0].question)
      this.setState({
        isLoading: false,
        questions: data.results,
        currentQuestion: data.results[0]
      })
    })
  }

  loadingOrTrivia() {
    if (this.state.isLoading) {
      return <p>Loading...</p>
    }
    return <Trivia questions={this.state.questions} />
  }

  render() {
    return (
      <div>
        <h1>Trivia</h1>
        <button onClick={this.loadQuestions}>refresh</button>
        {this.loadingOrTrivia()}
      </div>
    );
  }
}

export default App;
