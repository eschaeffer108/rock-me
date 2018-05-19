import React from 'react';
import { Route, IndexRoute, Router, browserHistory } from 'react-router';
import CommentsIndexContainer from '../containers/CommentsIndexContainer';
const App = (props) => {
  return (
    <Router history={browserHistory}>
      <Route path='/' component={CommentsIndexContainer}/>
      <Route path = "concerts/:id/comments/new" component={CommentsIndexContainer}/>
      <Route path ="concerts/:id/comments" component ={CommentsIndexContainer}/>
    </Router>
  );
}

export default App;
