# BitDevs Latino

Simple Zola site for hosting all of the links from meetups past and future.

## Prerequisites

Before you begin, ensure you have the following installed.

- **[Zola](https://www.getzola.org/documentation/getting-started/installation/):** The static site generator used for this project. Version `0.17.2` or higher is recommended.

- **[Trunk](https://docs.trunk.io/code-quality/overview/getting-started/install):** A command-line tool for checking, formatting, and linting the codebase. It needs to be installed on your local machine.

  For macOS and Linux, you can install it by running the following command in your terminal:

  ```bash
  $ curl -LO https://trunk.io/releases/trunk
  $ chmod +x trunk
  ```

  For other systems, please refer to the [official installation documentation](https://docs.trunk.io/code-quality/overview/getting-started/install).

## Development

1.  Clone the repository:
    ```bash
    $ git clone https://github.com/BitDevsLatam/bitdevs-lat.git
    $ cd bitdevs-lat
    ```
2.  Run the setup script to check for dependencies:
    ```bash
    $ chmod +x setup.sh
    $ ./setup.sh
    ```
3.  Run the local development server:
    ```bash
    $ zola serve
    ```
4.  Open your browser and navigate to `http://localhost:1111`.

## Linting and Formatting

This project uses [Trunk](https://trunk.io) to ensure all code is formatted correctly and free of linting errors. Before committing any changes, please run the following command to check your code:

```bash
$ ./trunk check .
```

## Making a Post

To add a new event, create a new Markdown file in the `content/events/` directory. The filename must follow the format `YYYY-MM-DD-title-of-the-event.md`.

At the top of the file, you must include the following frontmatter:

```toml
+++
title = "Socratic Seminar 123"
template = "post.html"
date = YYYY-MM-DD
[extra]
meetup_id = "optional-meetup-id"
+++

## Topics

- Link to topic 1
- Link to topic 2
- Link to topic 3
```

After the frontmatter, you can write the content of the post using standard [Markdown](https://www.markdownguide.org/cheat-sheet/).

## Contributing

We welcome contributions! To contribute, please follow these steps:

1.  **Fork** the repository.
2.  For new features or bug fixes, please use the **[Git Feature Branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)**. Create a new **branch** from `main` (e.g., `feature/my-awesome-feature` or `fix/bug-description`).
3.  Make your changes and ensure you run `trunk check .` to format the code and catch any linting issues.
4.  **Commit** your changes. We recommend using [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) for clear and consistent commit history. Additionally, it's highly recommended to [sign your commits](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits) for added security and traceability.
5.  Push your branch and open a **Pull Request**.

## Changing Site Data

All general site configurations are contained in `config.toml`.

## Attributions

Thanks to [BitDevs NYC](https://github.com/BitDevsNYC/BitDevsNYC.github.io) for the
Jekyll site that this site is based on, and to [BitDevs LA](https://bitdevsla.org) for creating
this [Zola](https://www.getzola.org) BitDevs template.

## License

Distributed under the MIT License. See [LICENSE](LICENSE) file for more information.
