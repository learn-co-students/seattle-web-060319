import React, { Component, Fragment } from 'react';
import Header from './components/Header'
import PizzaForm from './components/PizzaForm'
import PizzaList from './containers/PizzaList'

const API = 'http://localhost:3000/pizzas'

class App extends Component {
  constructor(props) {
    super(props)
    this.state = {
      pizzas: [],
      id: undefined,
      topping: '',
      size: '',
      isVegetarian: false
    }
  }

  componentDidMount() {
    fetch(API)
    .then(res => res.json())
    .then(pizzas => {
      this.setState({pizzas: pizzas})
    })
  }

  // receives a parameter which is an entire pizza object
  editPizza = (pizza) => {
    this.setState({
      id: pizza.id,
      topping: pizza.topping,
      size: pizza.size,
      isVegetarian: pizza.vegetarian
    })
  }

  savePizza = (updatedPizza) => {
    let pizzas = this.state.pizzas.map(pizza => {
      if (pizza.id === updatedPizza.id) {
        return updatedPizza
      }
      return pizza
    })

    this.setState({pizzas})
  }

  render() {
    return (
      <Fragment>
        <Header/>
        <PizzaForm
          id={this.state.id}
          size={this.state.size}
          topping={this.state.topping}
          isVegetarian={this.state.isVegetarian}
          savePizza={this.savePizza}
        />
        <PizzaList
          pizzas={this.state.pizzas} 
          editPizza={this.editPizza}
        />
      </Fragment>
    );
  }
}

export default App;
