import React from 'react'
import PerformerForm from './PerformerForm'
import 'bootstrap/dist/css/bootstrap.min.css'

import { Button, Table, Card, Form, Container, Row, Col } from 'react-bootstrap'

const Performer = (props) => {
    return (
        <Container>
            <Row>
                <Col>
                    <Card style={{width: '300px'}}>
                        <Card.Img variant='top' src={props.image} alt='Card image' />
                        <Card.Title>{props.name}</Card.Title>
                        <Card.Text>Age: {props.age}</Card.Text>
                        <Card.Text>{props.bio}</Card.Text>
                        <Card.Text>{props.id}</Card.Text>
                        <button onClick={() => props.deletePerformer(props.id)}>Delete</button>
                    </Card>
                </Col>
            </Row>

            {/* <h1>Name: {props.name}</h1>
            <p>ID: {props.id}</p>
            <p>image: {props.image}</p>
            <p>age: {props.age}</p>
            <p>bio: {props.bio}</p>
            <PerformerForm updatePerformer={props.updateItem} id={props.id} name={props.name} age={props.age} image={props.image} bio={props.bio} /> */}
        </Container>
    )
}

export default Performer