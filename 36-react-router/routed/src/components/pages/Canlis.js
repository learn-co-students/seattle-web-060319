import React from 'react'
import {Link} from 'react-router-dom'

export default class Canlis extends React.Component {
  state = {guests: 2}
  render() {
    return <div>
      <h1>Eat at Canlis</h1>
      <p>
        Canlis is a fancy place. Make a reservation and join us!
      </p>

      <p>
        How many people are in your party?
        <input type="number" value={this.state.guests} 
          onChange={(ev) => this.setState({guests: ev.target.value})}
        />

        <Link to={{
          pathname: "/canlis/reservation",
          state: {guests: this.state.guests}
        }}>
          Reserve
        </Link>
      </p>
    </div>
  }
}