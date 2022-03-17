import { useState, useEffect } from 'react'

const SongListF = (props) => {
  // makes it so that it only runs on mount
  useEffect(() => {
    console.log('useEffect: songListF function mounted')
  },[])
  
  const [song, setSong] = useState(props.initialSongs || [])

  // [{title: 'Parting', artist: 'ONEWE', album: 'https://m.media-amazon.com/images/I/91R1zG2dUDL._SS500_.jpg'}, {title: 'Shine', artist: 'PENTAGON', album: 'https://upload.wikimedia.org/wikipedia/en/e/ef/Pentagon_-_Positive_%28EP%29.jpg'}, {title: 'Greenlights', artist: 'Krewella', album: 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/Greenlights_%282021_song%29.jpg/220px-Greenlights_%282021_song%29.jpg'}, {title: 'Heat Waves', artist: 'Glass Animals', album: 'https://thecentraltrend.com/wp-content/uploads/2021/02/heatwaves-900x900.jpg'}, {title: 'Castle', artist: 'Halsey', album: 'https://upload.wikimedia.org/wikipedia/en/4/4c/Halsey_-_Badlands.png'}]

  return (
    <div>
      <h2>Functional Song List</h2>
      <p>{props.song} by {props.artist}</p>
    </div>
  )
  
}


export default SongListF