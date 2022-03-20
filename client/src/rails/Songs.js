import React, {useState, useEffect} from 'react'
import {useNavigate} from 'react-router-dom'
import axios from 'axios'
import Song from './Song'

const Songs = () => {
    const navigate = useNavigate()
    const [songs, setSongs] = useState([])
    useEffect(() => {
        console.log('rails mounted and doing api call to get songs')
        getSongs()
    },[])

    const addSong = async (song) => {
        try {
            let res = await axios.post('/api/songs', song)
        } catch (err) {
            alert('error occurred in addSong')
        }
    }

    const deleteSong = async (id) => {
        await axios.delete(`/api/songs/${id}`)
        let filteredSongs = songs.filter(song => song.id !== id)
        setSongs(filteredSongs)
    }

    const getSongs = async() => {
        try {
            let res = await axios.get('api/songs')
            setSongs(res.data)
        } catch(err) {
            alert('error in getSongs')
        }
    }

    const renderSongs = () => {
        return songs.map(song => {
            return <Song key={song.id} {...song}
            deleteSong={deleteSong}
            addSong={addSong} />
        })
    }

    return (
        <div>
            <h2>Songs from Rails Back End</h2>
            <button onClick={() => navigate('/songs/new')}>New Song</button>
            <div>
            {renderSongs()}
            </div>
            {/* <p>{JSON.stringify(songs)}</p> */}
        </div>
    )

}



export default Songs