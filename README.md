# mpsds_docker
MPSDS docker

## Overview

This project simulates a smart house environment, integrating solar energy production, battery management, water usage, and NPC (Non-Player Character) behavior. The simulation can run in either **fast-forward** or **real-time** mode, generating detailed outputs about energy and water consumption, device usage, and environmental conditions.

## Prerequisites

Before building and running the project, ensure the following are installed on your system:

- **Docker**: Install Docker from [Docker's official website](https://www.docker.com/).
- **Python**: If you want to run the code locally (optional).
- **Environment Variables**: Set the `APPID_AQ` environment variable for air quality data (if applicable).

## Project Structure

- `puppeteer.py`: The main entry point for the simulation.
- `solar_module/solar_irradiance.py`: Handles solar irradiance and production calculations.
- `battery_module/battery_sim.py`: Manages battery simulation and status.
- `climateEnviroment/temperature_humidty_airquality.py`: Fetches temperature, humidity, and air quality data.
- `npc.py`: Simulates NPC behavior and device usage.
- `config_default.json`: Default configuration file for the simulation.
- `Dockerfile`: Docker configuration for building the container.
- `requirements.txt`: Python dependencies.

## Building the Docker Image

To build the Docker image, use the following command:

```bash
docker build -t mpsds_dock .
```

This command will create a Docker image named ```mpsds_dock``` based on the ```Dockerfile``` in the project directory.

## Running the simulation

To run the simulation, use the following command:
```
docker run --rm -v $(pwd)/output:/app/output mpsds_dock config_default.json /app/output
```

### Running the simulation
- ```--rm```: Automatically removes the container after it stops.
- ```-v $(pwd)/output:/app/output```: Mounts the ```output``` directory in the current working directory to ```/app/output``` inside the container. This ensures the simulation results are saved locally.
- ```mpsds_dock```: The name of the Docker image.
- ```config_default.json```: The configuration file for the simulation. You can replace this with another configuration file if needed.
- ```/app/output```: The directory inside the container where the output will be saved.
