import React from 'react'

class PeeveForm extends React.Component {
  constructor(props) {
    super(props)
  }

  handleSubmit = (ev) => {
    ev.preventDefault()
    let text = ev.target.elements.peeve.value
    this.props.addPeeve(text)
  }

  render() {
    return <div>
      <form onSubmit={this.handleSubmit}>
        <input name="peeve" type="text" />
        <input type="submit" />
      </form>
    </div>
  }
}

export default PeeveForm