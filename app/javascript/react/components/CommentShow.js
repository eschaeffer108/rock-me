import React from 'react';
import { browserHistory, Link } from 'react-router';

const CommentShow = (props) => {
  return(
    <div className="comment-show">
      <h2>{props.title}</h2>
      <p>{props.body}</p>
    </div>
  )
}

export default CommentShow;
