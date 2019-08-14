import React from 'react'
import {withRouter} from 'react-router-dom'

class Reservation extends React.Component {
  render() {
    return <div>
      <h1>Reservation</h1>
      <p>
        Great! You've made a reservation for
        {' '}
        {this.props.location.state.guests}
      </p>
    </div>
  }
}

export default withRouter(Reservation)