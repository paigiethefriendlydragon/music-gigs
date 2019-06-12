import React, { Component } from 'react'
const getVideoId = require('get-video-id');

const MusicianTile = (props) => {
  return(
      <div id="page">

      <div class="row">
        <div class="column">
          <div id="name" class="name">
              <p>{props.first_name} {props.last_name} </p>
      </div>
        <div id="pic" className="">
          <img id="picture" src= {props.pic}/>
        </div>

        <div id="youtube" className="link-container">
            <p>Check out our youtube:</p>
            <iframe id="youtube-frame" width="${width}" height="${height}" src={"http://www.youtube.com/embed/" + getVideoId(props.youtube).id} frameborder="0"></iframe>
        </div>



        <div id="description" class="description-container">
          <p>{props.description}</p>
          <p>Hourly rate: ${props.rate}</p>
          <p>Rate per gig: ${props.gigRate}</p>
        </div>

        <div id="soundcloud" className="link-container">
          <p> Check out our soundcloud: <iframe id="soundcloud-frame" width="600" height="600" scrolling="no" frameborder="no" allow="autoplay" src={props.soundcloud}> </iframe></p>
        </div>
        <div id="request">
          <p> Book {props.first_name}</p>
        </div>

        // <div id="message">
        //   <p> Message {props.first_name}</p>
        // </div>
      </div>
    </div>
    </div>
  )
}

export default MusicianTile
