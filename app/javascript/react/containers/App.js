import React from 'react'
import { Router, browserHistory, Route, IndexRoute } from 'react-router';
import MusicianListShowContainer from './MusicianListShowContainer'
import MusicianShowContainer from './MusicianShowContainer'

 const App = (props) => {
  return (

  <Router history={browserHistory}>
    <Route path='/users' component={MusicianListShowContainer} />
    <Route path='/users/:id' component={MusicianShowContainer} />
  </Router>
  )
}

export default App
