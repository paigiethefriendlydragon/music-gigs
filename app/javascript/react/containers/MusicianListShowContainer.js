import React, {Component} from 'react'
import MusicianListTile from '../components/MusicianListTile'

class MusicianListShowContainer extends Component {
  constructor(props){
    super(props)
    this.state = {
      users: []
    }
  }
  componentDidMount(){
    fetch(`/api/v1/users`)
    .then(response => {
      if (response.ok) {
        return response;
      } else {
          let errorMessage = `${ response.status }(${ response.statusText })` ,
          error = new Error(errorMessage);
          throw(error);
      }
    })

    .then(response => response.json())
    .then(body => {
      this.setState({ users: body })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
     let userArray= this.state.users.map(user => {
      return(
      <MusicianListTile
        key={user.id}
        id={user.id}
        name={user.name}
        city={user.city}
        state={user.state}
        zip={user.zip}
        first_name={user.first_name}
        last_name={user.last_name}
        description={user.description}
        hourly_rate={user.rate_per_hour}
        gig_rate={user.rate_per_gig}
        pic={user.profile_photo.url}
        />
      )
    })

    return(
      <div className="">
      {userArray}
      </div>
      )
    }

}

export default MusicianListShowContainer
