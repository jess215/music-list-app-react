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
                <p>Age:</p>
                <p>Image:</p>
                <p>Bio:</p>
            </form>
        </div>
    )
}

export default PerformerForm