import React, { Component } from 'react';
import CommentTile from '../components/CommentTile';
import CommentTitleField from '../components/CommentTitleField';
import CommentBodyField from '../components/CommentBodyField';

class CommentsIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      comments: [],
      commentTitle:'',
      commentBody:'',
      error: null
    }
    this.toggleCommentSelect=this.toggleCommentSelect.bind(this)
    this.handleTitleChange=this.handleTitleChange.bind(this)
    this.handleBodyChange=this.handleBodyChange.bind(this)
    this.handleSubmitForm=this.handleSubmitForm.bind(this)
  }
    toggleCommentSelect(id) {
      if (id === this.state.selectedComment) {
        this.setState({ selectedComment: null})
      } else {
        this.setState({ selectedComment: id})
      }
    }

  toggleCommentSelect(id) {
    if (id === this.state.selectedComment) {
      this.setState({ selectedComment: null})
    } else {
      this.setState({ selectedComment: id})
    }
  }

  handleTitleChange(event) {
    this.setState({commentTitle: event.target.value})
  }

  handleBodyChange(event){
    this.setState({commentBody: event.target.value})
  }

  handleSubmitForm(event){
    let concert_id = this.props.params.id
    event.preventDefault()
    if (this.state.commentTitle === "" || this.state.commentBody === ""){
      this.setState({error: "Please fill out all fields!"})
    } else {
      let formPayload = {
        title: this.state.commentTitle,
        body: this.state.commentBody
      }

    fetch(`/api/v1/concerts/${concert_id}/comments`, {
      credentials: 'same-origin',
      method: 'POST',
      body: JSON.stringify(formPayload),
      headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' }
    })
    .then(response => response.json())
    .then(body => {
      console.log("successful!")
      window.location.href = `/concerts/${concert_id}`
      // this.setState({comments: this.state.comments.concat(body.comment)})
    })
  }
  }

  render() {
    // debugger;
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
      <div className="comment-form">
        <div className="small-8 small-centered-columns">
          <div className="comment-form-title">Add a New Comment</div>

          <form className='newComment'onSubmit={this.handleSubmitForm}>
            <p className='error'>{this.state.error}</p>
          <div className="formtext">
            <div className="commentitle">
              <CommentTitleField
                label="Comment Title "
                name="comment-title"
                content={this.state.commentTitle}
                handlerFunction ={this.handleTitleChange}
              />
            </div>
            <CommentBodyField
              label="Comment Body "
              name="comment-body"
              content={this.state.commentBody}
              handlerFunction={this.handleBodyChange}
            />
          </div>
            <div className="submit">
              <input className="button" type="submit" value="Submit"/>
            </div>
          </form>
        </div>
      </div>
      )
  }
}

export default CommentsIndexContainer;
