import React from 'react';
import './App.css';

import PeeveForm from './components/PeeveForm'
import PeeveList from './components/PeeveList'

class App extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      peeves: [
        'leaving the door open',
        'sports',
        'chewing gum',
      ]
    }
  }

  addPeeve = (text) => {
    let peeves = [...this.state.peeves, text]
    this.setState({peeves})
  }

  deletePeeve = (text) => {
    let peeves = this.state.peeves.filter(peeve => {
      return peeve !== text
    })
    this.setState({peeves})
  }

  render() {
    return (
      <div className="App App-header">
        <h1>Steve's Peeves</h1>
        <PeeveForm addPeeve={this.addPeeve} />
        <PeeveList peeves={this.state.peeves} deletePeeve={this.deletePeeve} />
      </div>
    );
  }
}

export default App;
