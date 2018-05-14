import React from 'react';
import { Route, IndexRoute, Router, browserHistory } from 'react-router';
import CommentsIndexContainer from '../containers/CommentsIndexContainer';
import CommentShowContainer from '../containers/CommentShowContainer';

const App = (props) => {
  return (
    <Router history={browserHistory}>
      <Route path='/'>
        <IndexRoute component={CommentsIndexContainer}/>
        <Route path = '/comments' component={CommentsIndexContainer}/>
        <Route path = '/comments/:id' component={CommentShowContainer}/>
     </Route>
    </Router>
  );
}

export default App;
