# sbd-mkdocs

This repository contains the source documentation for the **Second Brain Database** project, built using [MkDocs](https://www.mkdocs.org/) and the [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) theme.

## Features

-   **Comprehensive Documentation**: Covers API, architecture, deployment, and guides.
-   **Material Theme**: Modern, responsive, and accessible design.
-   **Search**: Fast client-side search.
-   **Versioning**: Support for multiple versions of documentation.

## Prerequisites

-   Python 3.8+
-   pip

## Getting Started

1.  **Install dependencies**:
    ```bash
    pip install -r requirements.txt
    ```

2.  **Run the development server**:
    ```bash
    mkdocs serve
    ```
    Open [http://localhost:8000](http://localhost:8000) with your browser to see the result.

## Build

To build the documentation for production:

```bash
mkdocs build
```

The static site will be generated in the `site/` directory.

## Project Structure

-   `docs/`: Markdown source files.
-   `mkdocs.yml`: MkDocs configuration file.
-   `overrides/`: Custom HTML/CSS overrides.

## License

MIT
