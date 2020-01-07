import * as React from "react";
import { RouteComponentProps } from "react-router-dom";
import ReactMapGL, { Marker } from "react-map-gl";
import CellMarker from "../components/CellMarker";

interface Cell {
  uuid: String;
}

const HomePage: React.FC<RouteComponentProps> = () => {
  const [viewport, setViewport] = React.useState({
    width: "100%",
    height: 400,
    latitude: -15.77972,
    longitude: -47.92971,
    zoom: 3
  });

  const [cells, setCells] = React.useState([]);

  const fetchCells = async () => {
    const data = await fetch("/api/cells").then(
      response => response.json() as Promise<any>
    );

    setCells(data.cells);
  };

  React.useEffect(() => {
    fetchCells();
  }, cells);

  return (
    <ReactMapGL
      {...viewport}
      mapboxApiAccessToken="pk.eyJ1IjoibmVyaWp1bmlvciIsImEiOiJjazUzZDVuZDcwNTY2M2xsODRtMmFwMWpwIn0.xIVp7ORT0ALiqSlRjPQW0w"
      onViewportChange={setViewport}
    >
      {cells.map((cell: Cell) => (
        <CellMarker
          key={cell.uuid}
          latitude={viewport.latitude - 0.1}
          longitude={viewport.longitude - 0.1}
          offsetLeft={-20}
          offsetTop={-10}
        >
          <div>You are here</div>
        </CellMarker>
      ))}
    </ReactMapGL>
  );
};

export default HomePage;
