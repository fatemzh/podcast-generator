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


## Create a YAML File
Create a YAML file in your repository with the following format:
### Example `feed.yaml`

```yaml
title: My Podcast
format: audio/mpeg
subtitle: A great podcast
author: John Doe
description: This is an example podcast feed.
link: https://example.com/podcast
image: /images/podcast-logo.png
language: en
category: Technology
item:
  - title: Episode 1
    description: The first episode.
    file: /audio/episode1.mp3
    length: "12345"
    duration: "12:34"
    published: "Mon, 01 Jan 2023 00:00:00 GMT"
```

## Sample Workflow
You're also going to need your own workflow file. Here's a sample:

```yaml
name: Generate Feed
on: [push]
jobs:
  generate-feed:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Repo
        uses: actions/checkout@v3
      - name: Run Feed Generator
        uses: planetoftheweb/podcast-feed-generator@main
```
