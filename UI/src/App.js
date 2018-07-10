import React, { Component } from 'react';
import './App.css';
// Import Component
import GingHead from './components/ginghead'
import GingGreet from './components/ginggreet'
import Gingulator from './components/gingulator'
import GingFoot from './components/gingfoot'
class App extends Component {
  render() {
    return (
      <div className="App">
        <GingHead />
        <GingGreet />
        <Gingulator />
        <GingFoot/>
      </div>
    );
  }
}

export default App;
