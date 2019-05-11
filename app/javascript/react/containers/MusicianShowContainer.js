import React, {Component} from 'react'
import MusicianTile from '../components/MusicianTile'

class MusicianShowContainer extends Component {
  constructor(props){
    super(props)
    this.state = {
      user: {}
    }
  }
  componentDidMount(){
    fetch(`/api/v1/users/${this.props.params.id}`)
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
      this.setState({ user: body })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
      return(
        <MusicianTile
        key={this.state.user.id}
        firstName={this.state.user.first_name}
        last_name={this.state.user.last_name}
        address={this.state.user.address}
        city={this.state.user.city}
        state={this.state.user.state}
        zip={this.state.user.zip}
        description={this.state.user.description}
        rate= {this.state.user.rate_per_hour}
        gigRate={this.state.user.rate_per_gig}
        youtube={this.state.user.recordings_link}
        soundcloud={this.state.user.soundcloud_link}
        />
    )
  }
}


export default MusicianShowContainer
