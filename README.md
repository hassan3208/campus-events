# Campus Events

A multi-page frontend website for showcasing university/campus events, destinations, packages, gallery highlights, and contact information.

This project is built as a lightweight static website and can be run locally with Parcel or inside Docker.

## Project Overview

Campus Events is designed as a student-friendly informational website. It includes:

- A home page introducing the platform
- A destination page featuring University of Central Punjab (UCP)
- A packages/events page with styled event cards
- A gallery page with event highlights
- A contact page with a basic inquiry form

## Features

- Multi-page website structure
- Shared global styling through a central CSS file
- Responsive layouts for smaller screens
- Clean card-based UI for event and gallery content
- Containerized development run option using Docker

## Tech Stack

- HTML5
- CSS3
- Node.js (for local tooling)
- Parcel (development server/bundler)
- Docker

## Project Structure

```text
campus-events/
|-- Dockerfile
|-- package.json
|-- README.md
|-- src/
|   |-- index.html
|   |-- destination.html
|   |-- packages.html
|   |-- gallery.html
|   |-- contact.html
|-- styles/
	|-- style.css
```

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/hassan3208/campus-events.git
cd campus-events
```

### 2. Install dependencies

```bash
npm install
```

### 3. Run the project locally

If Parcel is installed globally:

```bash
parcel src/index.html --port 1234
```

Or using npx:

```bash
npx parcel src/index.html --port 1234
```

Open your browser at:

```text
http://localhost:1234
```

## Run with Docker

### 1. Build image

```bash
docker build -t campus-events .
```

### 2. Run container

```bash
docker run -p 1234:1234 campus-events
```

Then open:

```text
http://localhost:1234
```

## Pages

- Home: `src/index.html`
- Destination: `src/destination.html`
- Packages: `src/packages.html`
- Gallery: `src/gallery.html`
- Contact: `src/contact.html`

## Scripts

Current `package.json` contains a placeholder test script:

```bash
npm test
```

Note: This currently returns a default "no test specified" message.

## Docker Notes

The included Dockerfile:

- Uses Node 18 as the base image
- Installs dependencies and Parcel
- Exposes port 1234
- Starts the app with Parcel on `0.0.0.0`

## Contributing

Contributions are welcome.

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push your branch
5. Open a pull request

## License

ISC

## Author

Maintained by Hassan (GitHub: [hassan3208](https://github.com/hassan3208)).
