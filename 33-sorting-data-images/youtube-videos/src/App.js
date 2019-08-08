import React from 'react';
import './App.css';

import MovieList from './components/MovieList'

import data from './data.json'

class App extends React.Component {
  isViewSortAscending = true
  state = {
    movies: data.movies,
  }

  compare = (a, b) => {
    console.log('comparing', a, b)
    return b - a
  }

  strToInt(str) {
    str = str.replace(/,/g, '')
    str = parseInt(str, 10)
    console.log('strToInt', str)
    return str
  }

  sortByViews = () => {
    console.log('sorting by views')
    let movies = [...data.movies]

    let scale = 1
    if (this.isViewSortAscending) {
      scale = -1
    }
    this.isViewSortAscending = !this.isViewSortAscending

    movies.sort((m1, m2) => {
      let v1 = scale * this.strToInt(m1.views)
      let v2 = scale * this.strToInt(m2.views)
      return this.compare(v1, v2)
    })
    this.setState({movies})
  }

  sortByLength = () => {

  }

  render() {
    return (
      <div className="App App-header">
        <h1>Movies</h1>
        <div>
          <button onClick={this.sortByViews}>Sort by Views</button>
          <button onClick={this.sortByLength}>Sort by Length</button>
        </div>
        <MovieList movies={this.state.movies} />
      </div>
    );
  }
}
export default App;