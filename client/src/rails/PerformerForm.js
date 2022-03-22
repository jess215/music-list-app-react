import React, { useState } from 'react'

const PerformerForm = (props) => {
    const [name, setName] = useState(props.name || '')
    const [age, setAge] = useState(props.age || '')
    const [image, setImage] = useState(props.image || '')
    const [bio, setBio] = useState(props.bio || '')

    const handleSubmit = (e) => {
        e.preventDefault()
        if(props.id){
            props.updatePerformer({name, age, image, bio, id: props.id})
        } else {
            props.addPerformer({name, age, image, bio, id: props.id})
        }
    }

    return (
        <div>
            <h1>Performer Form</h1>
            <h1>{props.id ? 'EDIT' : 'NEW'}</h1>
            <p>id: {props.id}</p>
            <form onSubmit={handleSubmit}>
                <p>Name:</p>
                <input value={name} onChange={(e) => setName(e.target.value)} />
                <p>Age:</p>
                <input value={age} onChange={(e) => setAge(e.target.value)} />
                <p>Image:</p>
                <input value={image} onChange={(e) => setImage(e.target.value)} />
                <p>Bio:</p>
                <input value={bio} onChange={(e) => setBio(e.target.value)} />
            </form>
        </div>
    )
}

export default PerformerForm