import React from 'react'

export default class PreviousState extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      count: 0
    }
  }

  handleClick = () => {
    let count = this.state.count + 1
    console.log('count is now:', count)
    this.setState({count})
    count = this.state.count + 1
    this.setState({count})
    console.log('count is now:', count)
  }

  asyncHandleClick = () => {
    this.setState(prevState => {
      return {count: prevState.count + 1}
    })
    this.setState(prevState => {
      return {count: prevState.count + 1}
    })
  }

  render() {
    return <div>
      {this.state.count}
      <button onClick={this.handleClick}>click me</button>
    </div>
  }
}