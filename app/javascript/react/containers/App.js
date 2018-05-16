import React from 'react';
import { Route, IndexRoute, Router, browserHistory } from 'react-router';
import CommentsIndexContainer from '../containers/CommentsIndexContainer';
import CommentShowContainer from '../containers/CommentShowContainer';
import CommentFormContainer from '../containers/CommentFormContainer';
const App = (props) => {
  return (
    <Router history={browserHistory}>
      <Route path='/'>
        <IndexRoute component={CommentsIndexContainer}/>
        <Route path = '/comments' component={CommentsIndexContainer}/>
        <Route path = '/comments/:id' component={CommentShowContainer}/>
        <Route path = '/concerts/:id/comments/new' component={CommentsIndexContainer}/>
     </Route>
    </Router>
  );
}

export default App;
