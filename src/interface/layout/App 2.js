import './App.css';
import Menu from './menu/Menu';
import Ribbon from './ribbon/Ribbon';

function App() {
  return (
    <div className="App">
      <Menu />
      <div className="main-content-container">
        <Ribbon />  
        <dib className="main-content"></dib>
      </div>
    </div>
  );
}

export default App;
