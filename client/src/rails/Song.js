import React from 'react'
import {useNavigate} from 'react-router-dom'

const Song = (props) => {
    const navigate = useNavigate()
    const {id, title, artist, album, deleteSong} = props

    return (
        <div>
            {/* <p>id: {id}</p> */}
            <h3>{title}</h3>
            <p>{artist}</p>
            <img src={album} />

                <p><button onClick={() => deleteSong(id)}>Delete</button>
                <button onClick={() => navigate(`/songs/${id}/edit`, {state: {title, artist, album}})}>Edit</button>
                <button onClick={() => navigate(`/monsters/${id}`, {state: {title, artist, album}})}>Show</button></p>
        </div>
    )
}

export default Song