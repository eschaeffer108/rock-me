import React, { Component } from 'react';
import CommentTile from '../components/CommentTile';
import CommentFormContainer from '../containers/CommentFormContainer';

class CommentsIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      comments: []
    }
    this.addNewComment = this.addNewComment.bind(this)
  }

  componentDidMount() {
    fetch('/api/v1/comments')
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`
          error = new Error(errorMessage)
        throw(error)
      }
    })
    .then(response => response.json())
    .then(response => {
      this.setState({comments: response})
    })
  }
  addNewComment(formPayload) {
    fetch('api/v1/comments', {
      method: 'POST',
      body: JSON.stringify(formPayload)
    })
    .then(response => response.json())
    .then(body => {
      this.setState({comments: this.state.comments.concat(body)})
    })
  }

  render() {
    let comments = this.state.comments.map(comment => {
      let selected;
      if (this.state.selectedComment === comment.id){
        selected = true
      }
      return(
        <CommentTile
          key={comment.id}
          id={comment.id}
          title={comment.title}
          body={comment.body}
        />
      )
    })
    return(
      <div className="row">
        <div className="small-8 small-centered-columns">
          <h1>Comments</h1>
          <hr/>
          {comments}
          <CommentFormContainer addNewComment={this.addNewComment}/>
        </div>
      </div>
    )
  }
}

export default CommentsIndexContainer;
