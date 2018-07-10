import React from 'react'
import '../App.css'
import Sam from '../img/samGing.jpeg'
import Avatar from '@material-ui/core/Avatar'
const GingHead = () => {
            const ctitle = "Gingulator"
            return(
                  <header className="App-header">
                        <Avatar alt="Sam Ging" src={Sam} className="App-avatar"/>
                        <h1 className="App-title">{ctitle}</h1>
                  </header>
            )
      }
export default GingHead
