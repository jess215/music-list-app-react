import logo from './logo.svg';
// import './App.css';
import SongFormF from './functional/SongForm'
import SongFormC from './class/SongForm'
import SongListF from './functional/SongList'
import SongListC from './class/SongList'
import { BACKGROUND_COLOR, PRIMARY_COLOR } from './style-components/Styles'
import Header from './style-components/Header';
import Songs from './rails/Songs';

// functional component
function App() {
  return (
    <div className="App" style={{backgroundColor:`${BACKGROUND_COLOR}`}}>
      <Header text='Songs That Give Me Dopamine' as='h1' />
      <hr className='divider'/>

      <SongListC header='Class Component Song List'/>

      <hr className='divider'/>

      <SongListF header='Functional Song List' initialSongs={[{title: 'Parting', artist: 'ONEWE', album: 'https://m.media-amazon.com/images/I/91R1zG2dUDL._SS500_.jpg'}, {title: 'Shine', artist: 'PENTAGON', album: 'https://upload.wikimedia.org/wikipedia/en/e/ef/Pentagon_-_Positive_%28EP%29.jpg'}, {title: 'Greenlights', artist: 'Krewella', album: 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/Greenlights_%282021_song%29.jpg/220px-Greenlights_%282021_song%29.jpg'}, {title: 'Heat Waves', artist: 'Glass Animals', album: 'https://thecentraltrend.com/wp-content/uploads/2021/02/heatwaves-900x900.jpg'}, {title: 'Castle', artist: 'Halsey', album: 'https://upload.wikimedia.org/wikipedia/en/4/4c/Halsey_-_Badlands.png'}]}/>
      
      <hr className='divider' />

      <Songs />

    </div>
  );
}

export default App;
