# Podcast Feed Generator

## Overview
This project automates the creation of podcast RSS feeds from YAML files, developed as part of the LinkedIn Learning "Career Essentials in GitHub Professional Certificate". It transforms user-friendly YAML metadata into standard XML RSS feeds and integrates seamlessly with GitHub for automatic updates.

## Features
- **YAML to RSS Conversion**: Easily convert podcast metadata from YAML to XML RSS feeds.
- **Automated Git Operations**: Automatically commit and push updates to GitHub.
- **Comprehensive Metadata Support**: Customize a wide range of podcast details including title, description, author, and episodes.

## Getting Started

### Prerequisites
- Docker
- Git

### Installation

1. **Clone the Repository**
    ```sh
    git clone https://github.com/your-username/podcast-feed-generator.git
    cd podcast-feed-generator
    ```

2. **Build the Docker Image**
    ```sh
    docker build -t podcast-generator .
    ```

### Usage

1. **Prepare Your YAML File**
    Create a `feed.yaml` file with your podcast metadata.

2. **Run the Docker Container**
    ```sh
    docker run -e GITHUB_ACTOR=your-username -e INPUT_EMAIL=your-email -v $(pwd):/github/workspace podcast-generator
    ```
