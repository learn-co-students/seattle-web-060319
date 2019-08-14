import React from 'react';
import logo from './logo.svg';
import './App.css';

import {BrowserRouter as Router, Route, Link, NavLink} from 'react-router-dom'
import { withRouter } from "react-router";

import Navbar from './components/pages2/Navbar'
import Homepage from './components/pages2/Homepage'
import JohnWick from './components/pages2/JohnWick'
import JohnWick2 from './components/pages2/JohnWick2'
import JohnWick3 from './components/pages2/JohnWick3'

class JJJJJJJJJ extends React.Component {
  render() {
    return <div>JJJJJJJJJ</div>
  }
}

class Winner extends React.Component {
  render() {
    return <div>
      <p>Winning number: {this.props.winningNumber}</p>
      <p>Your Choice: {this.props.location.state.choice}</p>
    </div>
  }
}

Winner = withRouter(Winner)

function App() {
  let winner = Math.random()
  let loser1 = Math.random()
  let loser2 = Math.random()
  return (
    <div className="App">
      <header className="App-header">
        <h1>Seattle Cool Movies Theater</h1>
        <p>Today's winner is {winner}</p>
        <Router>
          <div>
            <Link to={{pathname: "/winner", state: {choice: winner}}}>winning link</Link>{' '}
            <Link to={{pathname: "/winner", state: {choice: loser1}}}>loser link 1</Link>{' '}
            <Link to={{pathname: "/winner", state: {choice: loser2}}}>loser link 2</Link>{' '}
          </div>
          <Navbar />
          <Route exact path="/" component={Homepage} />
          <Route path={`/winner`} component={() => <Winner winningNumber={winner}/>} />
          <Route path={`/john-wick`} component={JohnWick} />
          <Route path="/john-wick-2" component={JohnWick2} />
          <Route path="/john-wick-3" component={JohnWick3} />
        </Router>
      </header>
    </div>
  );
}

export default App;
