import React from 'react'
import '../App.css'
const GBot = () => {
            return(
                  <div className='gingbot-wrapper'>
                      <iframe title="GingBot"
                                    className='gingbot'
                                    src="https://console.dialogflow.com/api-client/demo/embedded/gingulator-io">
                      </iframe>
                  </div>
            )
      }
export default GBot
