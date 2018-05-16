import React, { Component } from 'react';
import CommentShow from '../components/CommentShow';
import CommentFromContainer from '../containers/CommentFormContainer';

class CommentShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      comments: {}
    }
  }

  componentDidMount() {
    let commentId=this.props.params.id
    fetch(`/api/V1/comments/${commentId}`)
    .then(response => {
      let parsed = response.json()
      return parsed
    }).then(comment => {
      this.setState({ comment: comment})
    })
  }

  render() {
    return(
      <CommentShow
        id={this.state.comment.id}
        title={this.state.comment.title}
        body={this.state.comment.body}
      />
    )
  }
}

export default CommentShowContainer;
