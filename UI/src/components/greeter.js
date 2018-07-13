import React from 'react'
import Button from '@material-ui/core/Button';
import ExitToApp from '@material-ui/icons/ExitToApp'
import '../App.css'
const Intro = () => {
      let prompts = {
            m1: "Welcome to the Gingulator!",
            m2: "Sam's a busy guy but if you require assistance the Gingulator is happy to be of service",
            m3: "Try out the general view below or login for extended functionality"
      }
            return(
                  <div className="App-intro">
                        <p>{prompts.m1}</p>
                        <p>{prompts.m2}</p>
                        <p>{prompts.m3}</p>
                        <Button variant="contained"
                                    className ="login-button"
                                    href='https://gingulator.herokuapp.com/login'><ExitToApp /> Login</Button>
                  </div>
            )
      }
export default Intro
