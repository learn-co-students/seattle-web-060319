import React from 'react'
import {Link} from 'react-router-dom'

export default class Navbar extends React.Component {
  render() {
    return <ul>
      <li><Link to="/">Home</Link></li>
      <li><Link to="/greenlake">Greenlake</Link></li>
      <li><Link to="/canoeing">Canoeing</Link></li>
      <li><Link to="/app2">App2</Link></li>
      <li><Link to="/canlis">Eat</Link></li>
      <li><a href="http://yahoo.com">Yahoo!</a></li>
    </ul>
  }
}