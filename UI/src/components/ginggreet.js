import React from 'react'
import '../App.css'
const Intro = () => {
      let prompts = {
            m1: "Welcome to the Gingulator!",
            m2: "Sam's a busy guy but if you require assistance the Gingulator is happy to be of service",
            m3: "Please procure the closure of your query below"
      }
            return(
                  <div className="App-intro">
                        <p>{prompts.m1}</p>
                        <p>{prompts.m2}</p>
                        <p>{prompts.m3}</p>
                  </div>
            )
      }
export default Intro
