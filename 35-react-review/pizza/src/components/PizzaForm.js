import React from "react"

class PizzaForm extends React.Component {
  constructor(props) {
  super(props)
  this.state = {
    id: props.id,
    topping: props.topping,
    size: props.size,
    isVegetarian: props.isVegetarian
  }
}

static getDerivedStateFromProps(props, state) {
  // this object will become the state of the Compoennt
  if (props.id === state.id) {
    return null
  }
  return {
    id: props.id,
    topping: props.topping,
    size: props.size,
    isVegetarian: props.isVegetarian,
  }
}

handleChange = (ev) => {
  if (ev.target.name === "topping") {
    this.setState({topping: ev.target.value})
  } else if (ev.target.name === "size") {
    this.setState({size: ev.target.value})
  } else if (ev.target.name === "is-vegetarian") {
    if (ev.target.value === 'Vegetarian') {
      this.setState({isVegetarian: true})
    } else if (ev.target.value === 'Not Vegetarian') {
      this.setState({isVegetarian: false})
    }
  }
}

handleSubmit = () => {
  this.props.savePizza({
    id: this.state.id,
    topping: this.state.topping,
    size: this.state.size,
    vegetarian: this.state.isVegetarian,
  })
}

render() {
  return <div className="form-row">
    <div className="col-5">
        <input name="topping" onChange={this.handleChange} type="text" className="form-control" placeholder="Pizza Topping" value={
            //Pizza Topping Should Go Here
            this.state.topping
          } />
    </div>
    <div className="col">
      <select name="size" onChange={this.handleChange} value={this.state.size} className="form-control">
        <option value="Small">Small</option>
        <option value="Medium">Medium</option>
        <option value="Large">Large</option>
      </select>
    </div>
    <div className="col">
      <div className="form-check">
        <input name="is-vegetarian" onChange={this.handleChange} className="form-check-input" type="radio" value="Vegetarian" checked={this.state.isVegetarian}/>
        <label className="form-check-label">
          Vegetarian
        </label>
      </div>
      <div className="form-check">
        <input name="is-vegetarian" onChange={this.handleChange} className="form-check-input" type="radio" value="Not Vegetarian" checked={!this.state.isVegetarian}/>
        <label className="form-check-label">
          Not Vegetarian
        </label>
      </div>
    </div>
      <div className="col">
        <button type="submit" className="btn btn-success" onClick={this.handleSubmit}>Submit</button>
      </div>
    </div>
  }
}

export default PizzaForm
