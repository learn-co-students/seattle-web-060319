import React from "react"
// {
//   "id": 1,
//   "topping": "Plain",
//   "size": "Small",
//   "vegetarian": true
// },
const Pizza = (props) => {
  return(
    <tr>
      <td>{props.pizza.topping}</td>
      <td>{props.pizza.size}</td>
      <td>{props.pizza.vegetarian ? 'Yes' : 'No'}</td>
      <td>
        <button
          onClick={() => props.editPizza(props.pizza)}
          type="button" className="btn btn-primary"
        >
          Edit Pizza
        </button>
      </td>
    </tr>
  )
}

export default Pizza
