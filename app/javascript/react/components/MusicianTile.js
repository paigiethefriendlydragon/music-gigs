import React, { Component } from 'react'

const MusicianTile = (props) => {
  return(
    <div>
        <div id="pic" className="">
          <img src= {props.pic}/>
        </div>
        <div id="name" className="name-container">
          <p>{props.first_name} {props.last_name} </p>
        </div>
        <div id="description" className="description-container">
          <p>{props.description}</p>
        </div>
        <div id="rate" className="rate-container">
          <p>{props.rate}</p>
        </div>
        <div id="gigRate" className="rate-container">
          <p>{props.gigRate}</p>
        </div>
        <div id="youtube" className="link-container">
          <p>{props.youtube}</p>
        </div>
        <div id="soundcloud" className="link-container">
          <p>{props.soundcloud}</p>
        </div>
    </div>
  )
}

export default MusicianTile
