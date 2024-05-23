# College Location Map

This is a simple Rails application that displays the location of a college on a Google Map using Stimulus and Turbo Streams.

## Features

- Fetch college location data from the College Scorecard API.
- Display the college's location on a Google Map using Stimulus.
- Dynamically update the map via Turbo Stream responses.

## Prerequisites

- Ruby on Rails
- Google Maps API Key

## Setup

1. **Clone the repository**:

    ```sh
    git clone https://github.com/trueinviso/college_search.git
    cd college_search
    ```

2. **Install dependencies**:

    ```sh
    bundle install
    ```
3. **Configure credentials**:
- Add config/master.key file with credentials key.

4. **Start the Rails server**:

    ```sh
    bin/dev
    ```

## Usage

1. **Access the application**:
    - Open your web browser and go to `http://localhost:3000`.

2. **View the college location**:
    - Enter name of college you want to view
    - The map will display the location of the college based on the data retrieved from the College Scorecard API.
