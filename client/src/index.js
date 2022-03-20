import React from 'react'
import ReactDOM from 'react-dom'
import './index.css'
import App from './App'
import reportWebVitals from './reportWebVitals'
import { BrowserRouter, Route, Routes } from 'react-router-dom'
import Songs from './rails/Songs'
import SongShow from './rails/SongShow'
import SongForm from './rails/SongForm'

ReactDOM.render(
  <BrowserRouter>
  <Routes>
    <Route path='/' element={<App />} />
    <Route path='/songs' element={<Songs />} />
    <Route path='/songs/:id' element={<SongShow />} />
    <Route path='songs/new' element={<SongForm />} />
    <Route path='songs/:id/edit' element={<SongForm />} />
  </Routes>
  </BrowserRouter>,

  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
