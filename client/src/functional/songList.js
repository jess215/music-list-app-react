import { useState, useEffect } from 'react'
import '../App.css'

const SongListF = (props) => {
  // makes it so that it only runs on mount
  useEffect(() => {
    console.log('useEffect: songListF function mounted')
  },[])
  
  const [songs, setSongs] = useState(props.initialSongs || [])
  const [song, setSong] = useState('')

  // This is living on the main App.js page. I had it in here to test things out and decided to just comment it out and leave it here in case I needed to pull it later.
  // const initialSongs = [{title: 'Parting', artist: 'ONEWE', album: 'https://m.media-amazon.com/images/I/91R1zG2dUDL._SS500_.jpg'}, {title: 'Shine', artist: 'PENTAGON', album: 'https://upload.wikimedia.org/wikipedia/en/e/ef/Pentagon_-_Positive_%28EP%29.jpg'}, {title: 'Greenlights', artist: 'Krewella', album: 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/Greenlights_%282021_song%29.jpg/220px-Greenlights_%282021_song%29.jpg'}, {title: 'Heat Waves', artist: 'Glass Animals', album: 'https://thecentraltrend.com/wp-content/uploads/2021/02/heatwaves-900x900.jpg'}, {title: 'Castle', artist: 'Halsey', album: 'https://upload.wikimedia.org/wikipedia/en/4/4c/Halsey_-_Badlands.png'}]

  // rendering the songs by returning them by mapping them into their own objects
  const renderSongs = () => {
    return songs.map((x) => {
      return (
        <div key={x.title}>
          {/* Telling how I want the data returned, the title as an h2, the artist as a p, and the album as an img */}
          <h2 className='title'>{x.title}</h2>
          <p className='artist'>{x.artist}</p>
          <img className='album' src={x.album}></img>
        </div>
      )
    })
  }
  // Setting up the handleSubmit for the form
  const handleSubmit = (e) => {
    // Stops the page from refreshing on the submit, since we would lose the data as it's not being stored to a database
    e.preventDefault()
    const newSongs =[...songs, {title: song.title, artist: song.artist, album: song.album}]
  }

  return (
    <div>
      {/* Title that will be displayed above content */}
      <h1 className='header'>Functional Song List</h1>
      {/* Returning all of the songs from the renderSongs function */}
      <div className='song'>{renderSongs()}</div>
      {/* ADD IN DELETE BUTTON */}

      {/* ADD TOGGLE BUTTON TO SHOW/HIDE FORM ^^ */}
      {/* Form to add new song */}
      <form onSubmit={handleSubmit}>
        <p>Song Title:</p>
        <input value={song.title} onChange={(e) => {setSong.title(e.target.value)}}/>
        <p>Artist:</p>
        <input value={song.artist} onChange={(e) => {setSong.title(e.target.value)}}/>
        <p>Album IMG URL:</p>
        <input value={song.album} onChange={(e) => {setSong.title(e.target.value)}}/>
        {/* ADD SUBMIT BUTTON */}
      </form>
    </div>
  )
  
}


export default SongListF