import React, { Component } from 'react'

const MusicianTile = (props) => {
  return(
    <div>
        <div id="name">
            <h2>{props.first_name} {props.last_name} </h2>
        </div>
        <div id="description">
          <p>{props.description}</p>
        </div>
        <div id="rate">
          <p>{props.rate}</p>
        </div>
        <div id="gigRate">
          <p>{props.gigRate}</p>
        </div>
        <div id="youtube">
          <p>{props.youtube}</p>
        </div>
        <div id="soundcloud">
          <p>{props.soundcloud}</p>
        </div>

    </div>
  )
}

export default MusicianTile
