import React from 'react';
import logo from './logo.svg';
import './App.css';

import {BrowserRouter as Router, Route, Link, NavLink} from 'react-router-dom'
import App2 from './AppTwo'
import Navbar from './components/Navbar'
import Homepage from './components/pages/Homepage'
import GoToGreenlake from './components/pages/GoToGreenlake'
import CanoeArboretum from './components/pages/CanoeArboretum'

import Canlis from './components/pages/Canlis'
import Reservation from './components/pages/Reservation'

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <Router>
          <Navbar />
          <h1>Best things to do in Seattle During Summer</h1>
          <Route exact path="/" component={Homepage} />
          <Route exact path="/app2" component={App2} />
          <Route path="/greenlake" component={GoToGreenlake} />
          <Route path="/canoeing" component={CanoeArboretum} />
          <Route exact path="/canlis" component={Canlis} />
          <Route path="/canlis/reservation" component={Reservation} />
        </Router>
      </header>
    </div>
  );
}

export default App;
