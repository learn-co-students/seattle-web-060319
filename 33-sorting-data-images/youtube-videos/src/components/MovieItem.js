import React from 'react';

function getImg(movie) {
  let src = movie.title
  src = src.toLowerCase()
  src = src.replace(/ /g, '_')

  let img = require(`../imgs/${src}.png`)
  return img
}

function MovieItem(props) {
  return <li>
    <a href={props.movie.url}>
      <div>
        <img src={getImg(props.movie)} />
      </div>
      <div>
        {props.movie.title}
      </div>
      <div>
        {props.movie.views}
      </div>
    </a>
  </li>
}

export default MovieItem