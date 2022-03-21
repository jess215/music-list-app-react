import React, { useEffect, useState } from 'react'
import axios from 'axios'
import Performer from './Performer'
import { useLocation, useParams } from 'react-router-dom'
import 'bootstrap/dist/css/bootstrap.min.css'

import { Button, Table, Card, Grid, Form } from 'react-bootstrap'
import PerformerForm from './PerformerForm'

const SongShow = () => {
  const [performers, setPerformers] = useState ([])
  useEffect(() => {
    getPerformers()
  },[])

  const addPerformer = async (performer) => {
    let res = await axios.post(`/api/songs/${params.id}/performers`, performer)
    setPerformers([...performers, res.data])
  }

  const updatePerformer = async (performer) => {
    let res = await axios.put(`/api/song/${params.id}/performers/${performer.id}`, performer)
    const updatePerformers = performers.map(p => p.id === res.data.id ? res.data : p)
    setPerformers(updatePerformers)
  }

  const deletePerformer = async (id) => {
    let res = await axios.delete(`/api/songs/${params.id}/performers/${id}`)
    setPerformers(performers.filter(p => p.id !== id))
  }

  const getPerformers = async () => {
    let res = await axios.get(`/api/songs/${params.id}/performers`)
    setPerformers(res.data)
  }

  const renderPerformers = () => {
    return performers.map(p => <Performer deletePerformer={deletePerformer} key={p.id} {...p} updatePerformer={updatePerformer}/>)
  }

  const params = useParams()
  const location = useLocation()

  return (
    <div>
      <h1>Song Show</h1>
      <h2>{location.state.title}</h2>
      <p>ID: {params.id}</p>
      <PerformerForm addPerformer={addPerformer} />
      {renderPerformers()}
      <p>{JSON.stringify(performers)}</p>
    </div>
  )

}

export default SongShow