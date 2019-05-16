import React, { Component } from 'react'

const MusicianTile = (props) => {
  return(
      <div>
        <div id="pic" className="">
          <img src= {props.pic}/>
          </div>
          <div class="row">
            <div class="column">
              <div id="name" class="name-container">
                  <p>{props.first_name} {props.last_name} </p>
          </div>
          <div id="description" class="description-container">
            <p>{props.description}</p>
        </div>


        <div class="column">
          <div id="rate" className="rate-container">
            <p>Hourly rate: {props.rate}</p>
          </div>

          <div id="gigRate" className="rate-container">
            <p>Rate per gig: {props.gigRate}</p>
          </div>

          <div id="youtube" className="link-container">
            <p>Check out our youtube: {props.youtube}</p>
          </div>

          <div id="soundcloud" className="link-container">
            <p> Check out our soundcloud: {props.soundcloud}</p>
          </div>
        </div>
      </div>
    </div>
    </div>
  )
}

export default MusicianTile
