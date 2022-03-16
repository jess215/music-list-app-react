import React from 'react'
import SongFormC from './songForm'

// Format for class components
class SongListC extends React.Component{
    
    // constructor is how you set the props in a class component
    constructor(props) {
        super(props)
        // Here I'm just setting a few useStates with this.state to populate my page with some songs
        this.state={songs:[{title:'Thunderous', artist:'Stray Kids', album:'https://upload.wikimedia.org/wikipedia/en/5/59/Stray_Kids_-_Noeasy_%28Digital%29.jpeg'}, 
        {title:'Mikrokosmos', artist:'BTS', album:'https://m.media-amazon.com/images/I/51wUYZ1HYmL._SL1200_.jpg'}, 
        {title:'Hello Future', artist:'NCT DREAM', album:'https://i.scdn.co/image/ab67616d0000b273e6d118f2ad157bf0bbfb83cf'}, 
        {title:'Lion', artist:'Saint Mesa', album:'https://m.media-amazon.com/images/I/81gn0vk-YKL._SS500_.jpg'}, 
        {title:'Wellerman', artist:'Nathan Evans', album:'https://i1.sndcdn.com/artworks-9mbzFxHNT4IEsl3D-aEyVbA-t500x500.jpg'}],
        // I'm passing another useState saying that the 'showForm' should start as 'false' so it won't show on the page at load unless it is toggled to show 'true' 
        showForm: false}            
    }

    addSong = (song) => {
        // DB CALL

        // UPDATE STATE
        let updateSongs = [song, ...this.state.songs]
        this.setState({
            songs:updateSongs
        })
    }

    deleteSong = (songTitle) => {
        // filtering out songs where the title matches the title being deleted
        let filteredSongs = this.state.songs.filter(s => s.title !== songTitle)
        this.setState({
            songs:filteredSongs
        })
    }

    // Returning the songs into a renderSongs function
    renderSongs=() => {
        // returning the songs objects and then mapping over them
        return this.state.songs.map(s => {
            return(
                <div className='song'>
                    {/* Shows title of the song */}
                    <h3>{s.title}</h3>
                    {/* Class name as 'artist' so I can italicize it */}
                    <p className='artist'>{s.artist}</p>
                    {/* Class name as 'image' to control the size and setting the url as an src so it will appear as an image on the page */}
                    <img className='image' src={s.album} />
                    {/* Delete button that filters out the songs with the title being deleted */}
                    <p><button className='button' onClick={() => this.deleteSong(s.title)}>Delete</button></p>
                </div>
            )
        })
    }
    // Creating a function to toggle the 'showForm' to false/true
    toggleForm = () => {
        this.setState({
            showForm: !this.state.showForm
        })
    }

    render() {
        return(
            <div>
                {/* Button to toggle showing the form using the toggleForm function as the onClick handler */}
                <button className='button' onClick={this.toggleForm}>{this.state.showForm ? 'Hide' : 'Show'}</button>
                {/* Shows the form from SongFormC based on if it is true or false */}
                {this.state.showForm && <SongFormC addSong={this.addSong} />}
                <h2>Class Component Song List</h2>
                {/* Calling the renderSongs function to show the songs */}
                {this.renderSongs()}
            </div>
        )
    }

}

export default SongListC