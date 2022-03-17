import logo from './logo.svg';
// import './App.css';
import SongFormF from './functional/songForm'
import SongFormC from './class/songForm'
import SongListF from './functional/songList'
import SongListC from './class/songList'
import { BACKGROUND_COLOR, PRIMARY_COLOR } from './style-components/Styles'
import Header from './style-components/Header';

// functional component
function App() {
  return (
    <div className="App" style={{backgroundColor:`${BACKGROUND_COLOR}`}}>
      <Header text='Songs That Give Me Dopamine' as='h1' />
      <hr />

      <SongListC header='Class Component Song List' />

      <hr />

      <SongListF header='Functional Song List' />
      
    </div>
  );
}

export default App;
