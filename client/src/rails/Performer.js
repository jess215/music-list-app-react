import React from 'react'
import PerformerForm from './PerformerForm'

const Performer = (props) => {
    return (
        <div>
            <h1>Name: {props.name}</h1>
            <p>ID: {props.id}</p>
            <button onClick={() => props.deletePerformer(props.id)}>Delete</button>
            <PerformerForm updatePerformer={props.updateItem} id={props.id} name={props.name} age={props.age} image={props.image} bio={props.bio} />
        </div>
    )
}

export default Performer