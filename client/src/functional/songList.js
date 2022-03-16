import { useState, useEffect } from 'react'

const SongListF = (props) => {
  // makes it so that it only runs on mount
  useEffect(() => {
    console.log('useEffect: songListF function mounted')
  },[])
  
  const [song, setSong] = useState('')
  const [artist, setArtist] = useState ('')

  return (
    <div>
      <h2>Functional Song List</h2>
      <p>{song} by {artist}</p>
    </div>
  )
  
}


export default SongListF