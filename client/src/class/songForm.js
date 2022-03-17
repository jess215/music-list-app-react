import React from 'react'
import Button from '../style-components/Button'
import Container from '../style-components/Container'
import Text from '../style-components/Text'

class SongFormC extends React.Component{
    // Setting the props
    constructor(props) {
        super(props)
        // Setting the useState with blank values when the form loads
        this.state={
            title:'',
            artist:'',
            album:''
        }
    }
    handleChange = (e) => {
        // logging value input and what field it is populating based on the name
        console.log('value:', e.target.value)
        console.log('name:', e.target.name)
        // evaluates the name that is given in the input and matches it up with the key name in order to assign it the value, makes it so you don't have to use an if statement for every field
        this.setState({
            [e.target.name]:e.target.value
        })
        
        // THIS WORKS BUT IS MESSY
        // if(e.target.name === 'title'){
        //     this.setState({
        //         title:e.target.value
        //     })
        // }
        // if(e.target.name === 'artist'){
        //     this.setState({
        //         artist:e.target.value
        //     })
        // }
        // if(e.target.name === 'album'){
        //     this.setState({
        //         album:e.target.value
        //     })
        // }


    }
    handleSubmit = (e) => {
        // this stops the page from refreshing on the Submit so you don't lose the form input
        e.preventDefault()
        console.log(this.state)
        this.props.addSong(this.state)
    }

    render() {
        return(
            <Container>
                <form onSubmit={this.handleSubmit}>
                    {/* Form header */}
                    <Text>Title:</Text> 
                    {/* Form input field, assigning a name, which should match the key, and telling it to update the value to the setState, giving an onChange handler so that when the input is changed the value is updated */}
                    <input name='title' value={this.state.title} onChange={this.handleChange} />
                    <Text>Artist:</Text> 
                    <input name='artist' value={this.state.artist} onChange={this.handleChange} />
                    <Text>Album Image URL:</Text> 
                    <input name='album' value={this.state.album} onChange={this.handleChange} />
                    <p><Button className='button'>Add</Button></p>
                </form>
            </Container>
        )
    }
  
}

export default SongFormC