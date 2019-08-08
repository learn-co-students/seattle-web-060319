import React from 'react';
import MovieItem from './MovieItem'

function MovieList(props) {
  return <ul>
    {props.movies.map(movie => {
      return <MovieItem movie={movie} />
    })}
  </ul>
}

export default MovieList