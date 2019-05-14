import React, { Component } from 'react'

const MusicianListTile = (props) => {
  return(
    <div className = "">
      <div id="" className = "row column panel callout small-9 small-centered box-shadow">
          <h2>{props.first_name} {props.last_name} </h2>
          <p>{props.hourly_rate}</p>
          <p>{props.gig_rate}</p>
          <p>{props.city}</p>
          <p>{props.state}</p>
          <p>{props.pic}</p>
      </div>
    </div>
  )
}

export default MusicianListTile
