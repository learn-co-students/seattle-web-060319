import React from 'react'

class StevePeeve extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    return <li>
      <span onClick={() => this.props.deletePeeve(this.props.peeve)}>X</span>
      {this.props.peeve}
    </li>
  }
}

export default StevePeeve