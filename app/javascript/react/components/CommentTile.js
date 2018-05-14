import React from 'react';
import { Link } from 'react-router';

const CommentTile = (props) => {
  return(
    <div className="comment-tile">
      <Link to={`/comments/${props.id}`}>
        <p>{props.title}</p>
      </Link>
      <hr/>
    </div>
  )
}

export default CommentTile;
