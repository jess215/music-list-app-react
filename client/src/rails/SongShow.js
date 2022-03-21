import React, { useEffect, useState } from 'react'
import axios from 'axios'
import { useLocation, useParams } from 'react-router-dom'
import 'bootstrap/dist/css/bootstrap.min.css'

import { Button, Table, Card, Grid, Form } from 'react-bootstrap'

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
  }

}

export default SongShow