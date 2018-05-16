import React from 'react';
import { Link } from 'react-router';

const CommentTitleField = (props) => {
  return (
    <label>{props.label}
      <input
        name={props.name}
        type='text'
        value={props.content}
        onChange={props.handlerFunction}
      />
    </label>
  );
}

export default CommentTitleField;
