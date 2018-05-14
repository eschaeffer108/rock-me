import React, { Component } from 'react';
import TitleField from '../components/TitleField';
import BodyField from '../components/BodyField';

class CommentFormContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      commentTitle: '',
      commentBody: '',
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

    handleTitleChange(event) {
      this.setState({articleTitle: event.target.value})
    }

    handleBodyChange(event){
      this.setState({articleBody: event.target.value})
    }

    handleSubmitForm(event){
      event.preventDefault()
      if (this.state.commentBody === ""){
        this.setState({error: "Please fill out a comment!"})
      } else {
        let formPayload = {
          title: this.state.commentTitle,
          body: this.state.commentBody
        }

      this.props.addNewComment(formPayload)
    }
  }
  render() {
    return(
      <form onSubmit={this.handleSubmitForm}>
        <p>{this.state.error}</p>
        <BodyField
          content={this.state.commentBody}
          label="Comment Body"
          name="comment-body"
          handlerFunction={this.handleBodyChange}
        />

        <div>
          <input className="button" type="submit" value="Submit"/>
        </div>
      </form>
    )
  }
}

export default CommentFormContainer;
