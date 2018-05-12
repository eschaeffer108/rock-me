import React, { Component } from 'react';
import CommentComponent from '../components/CommentComponent';

class CommentFromContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      commentBody: '',
      error: null
    }

    this.toggleCommentSelect=this.toggleArticleSelect.bind(this)
    this.handleSubmitForm=this.handleSubmitForm.bind(this)
    
    toggleCommentSelect(id) {
      if (id === this.state.selectedComment) {
        this.setState({ selectedComment: null})
      } else {
        this.setState({ selectedComment: id})
      }
    }
    handleSubmitForm(event){
      event.preventDefault()
      if (this.state.commentBody === ""){
        this.setState({error: "Please fill out a comment!"})
      } else {
        let formPayload = {
          body: this.state.commentBody
        }
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

export defualt CommentFormContainer;
