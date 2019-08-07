import React from 'react'
import StevePeeve from './StevePeeve'

class PeeveForm extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    if (this.props.peeves.length === 0) {
      return <div>There's no peeves! How peeving.</div>
    }

    return <ul>
      {this.props.peeves.map(peeve => {
        return <StevePeeve
          peeve={peeve}
          deletePeeve={this.props.deletePeeve}
        />
      })}
    </ul>
  }
}

export default PeeveForm