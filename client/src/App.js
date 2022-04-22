import { useState, useEffect } from "react";
import { GoogleMap, LoadScript, Marker } from '@react-google-maps/api';

function App() {
  const googleMapsApiKey = "AIzaSyBiGVkMTXLnxYrreoA5KYD32EVlC1twz0w"
  const containerStyle = {
    width: '640px',
    height: '480px'
  };

  const center = {
    lat: 40.7338222,
    lng: -73.9800689
  };

  return (
    <div className="App">
      <LoadScript googleMapsApiKey={googleMapsApiKey}>
        <GoogleMap mapContainerStyle={containerStyle} center={center} zoom={15}>
          <Marker
            // icon={"https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png"}
            position={{lat: 40.7338222,lng: -73.9800689}}
          />
        </GoogleMap>
      </LoadScript>
      
    </div>
  );
}

export default App;
