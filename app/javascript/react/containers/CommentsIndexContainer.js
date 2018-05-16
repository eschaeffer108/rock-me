import React, { Component } from 'react';
import CommentTile from '../components/CommentTile';
import CommentFormContainer from '../containers/CommentFormContainer';
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


  componentDidMount() {
    fetch(`/api/v1/concerts/${concertId}comments/new.json`)
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
    event.preventDefault()
    if (this.state.commentTitle === "" || this.state.commentBody === ""){
      this.setState({error: "Please fill out all fields!"})
    } else {
      let formPayload = {
        title: this.state.commentTitle,
        body: this.state.commentBody
      }
    fetch(`/api/v1/concerts/${concertId}comments/new.json`, {
      method: 'POST',
      body: JSON.stringify(formPayload)
    })
    .then(response => response.json())
    .then(body => {
      this.setState({comments: this.state.comments.concat(body)})
    })
  }
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
          <form className='newComment'onSubmit={this.handleSubmitForm}>
            <p className='error'>{this.state.error}</p>
            <CommentTitleField
              label="Comment Title"
              name="comment-title"
              content={this.state.commentTitle}
              handlerFunction ={this.handleTitleChange}
            />
            <CommentBodyField
              label="Comment Body"
              name="comment-body"
              content={this.state.commentBody}
              handlerFunction={this.handleBodyChange}
            />

            <div>
              <input className="button" type="submit" value="Submit"/>
            </div>
          </form>
        </div>
      </div>
      )
  }
}

export default CommentsIndexContainer;
