import logo from './logo.svg';
import './App.css';
import SongFormF from './functional/songForm'
import SongFormC from './class/songForm'
import SongListF from './functional/songList'
import SongListC from './class/songList'

// functional component
function App() {
  return (
    <div className="App">
      <h1>Songs That Give Me Dopamine</h1>
      <hr />

      <SongListC header='Class Component Song List' />

      <hr />

      <SongListF header='Functional Song List' />
      
    </div>
  );
}

export default App;
