import React, { Component } from 'react';
import './App.css';
// Import Component
import Header from './components/header'
import Greet from './components/greeter'
import Gingulator from './components/gingulator'
import Footer from './components/footer'
class App extends Component {
  render() {
    return (
      <div className="App">
        <Header />
        <Greet />
        <Gingulator />
        <Footer/>
      </div>
    );
  }
}

export default App;
