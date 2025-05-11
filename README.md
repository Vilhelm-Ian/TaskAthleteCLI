# TaskAthlete

![logo](./logo.png)

> A command-line interface tool to track workouts, exercises, and fitness statistics.

TaskAthlete is designed for fitness enthusiasts and athletes who prefer managing their training logs directly from the terminal. It allows you to define exercises, log workouts with details like sets, reps, weight, duration, and distance, manage exercise aliases, view workout history, calculate statistics, and monitor personal bests. Data is stored locally in a SQLite database and configuration is managed via a TOML file.

**Disclaimer:** TaskAthlete is an independent project inspired by the concepts and user experience of the excellent [Taskwarrior](https://taskwarrior.org/) task management tool. However, **TaskAthlete is not affiliated with, endorsed by, or otherwise associated with the official Taskwarrior project.** It focuses specifically on workout tracking.


## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Commands](#commands)
  - [Exercise Management](#exercise-management)
  - [Workout Tracking](#workout-tracking)
  - [Bodyweight Tracking](#bodyweight-tracking)
  - [Statistics & Progress](#statistics--progress)
  - [Configuration & Utilities](#configuration--utilities)
- [Global Options](#global-options)
- [Examples](#examples)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)

## Features

*   Define and manage custom exercise types.
*   Log workout entries with details like sets, reps, weight, duration, or distance.
*   Track bodyweight over time and set target weights.
*   View statistics for specific exercises and overall workout volume.
*   Create aliases for exercises for quicker logging.
*   Customize units (Metric/Imperial).
*   Configure Personal Best (PB) notifications.
*   Export data (e.g., to CSV).

## Installation

(Instructions on how to install `ta` would go here. This might involve:
*   Downloading a pre-compiled binary from a releases page.
*   Using a package manager (e.g., `brew install ta`, `apt-get install ta`).
*   Building from source: `git clone <repository-url>` and then `cargo build --release` if it's a Rust project, or similar for other languages.)

**Example Placeholder:**

To install `ta`, please refer to the [releases page](<link-to-your-releases-page>) for pre-compiled binaries for your operating system.
Alternatively, if you have [Rust installed](https://www.rust-lang.org/tools/install), you can build from source:
```bash
git clone <your-git-repository-url>
cd ta
cargo build --release
```

## Usage

The basic syntax for `ta` is:

```bash
ta [OPTIONS] <COMMAND>
```

To get help for a specific command:

```bash
ta <COMMAND> --help
```

## Commands

Here's a breakdown of the available commands:

### Exercise Management

Manage your exercise definitions and aliases.

*   `ta create-exercise`: Define a new exercise type (e.g., name, type like weight/reps, cardio, etc.).
*   `ta delete-exercise`: Delete an existing exercise definition.
*   `ta edit-exercise`: Modify an existing exercise definition.
*   `ta list-exercises`: List all defined exercise types.
*   `ta alias <alias_name> <exercise_name>`: Create a shorthand alias for an existing exercise.
*   `ta unalias <alias_name>`: Delete an exercise alias.
*   `ta list-aliases`: List all defined exercise aliases.

### Workout Tracking

Log, edit, and view your workout sessions.

*   `ta add`: Add a new workout entry for a specific exercise.
*   `ta edit-workout`: Edit an existing workout entry (e.g., correct a typo, update reps).
*   `ta delete-workout`: Delete a specific workout entry.
*   `ta list`: List workout entries. Supports filtering (e.g., by date range, exercise).

### Bodyweight Tracking

Monitor your bodyweight.

*   `ta log-bodyweight`: Log your bodyweight on a specific date.
*   `ta list-bodyweights`: List logged bodyweight entries.
*   `ta delete-bodyweight`: Delete a specific bodyweight entry.
*   `ta set-target-weight`: Set your target bodyweight in the configuration.
*   `ta clear-target-weight`: Remove your target bodyweight from the configuration.

### Statistics & Progress

Analyze your performance and progress.

*   `ta stats`: Show statistics for a specific exercise (e.g., PBs, progression over time).
*   `ta volume`: Show total workout volume (e.g., sets * reps * weight) per day.
*   `ta set-pb-notification <true|false>`: Enable or disable Personal Best (PB) notifications globally.
*   `ta set-pb-notify-weight <true|false>`: Enable/disable PB notifications for Weight.
*   `ta set-pb-notify-reps <true|false>`: Enable/disable PB notifications for Reps.
*   `ta set-pb-notify-duration <true|false>`: Enable/disable PB notifications for Duration.
*   `ta set-pb-notify-distance <true|false>`: Enable/disable PB notifications for Distance.
*   `ta set-streak-interval <days>`: Set the interval in days for calculating workout streaks.

### Configuration & Utilities

Manage tool settings and other utilities.

*   `ta db-path`: Show the path to the database file where workout data is stored.
*   `ta config-path`: Show the path to the configuration file.
*   `ta set-units <Metric|Imperial>`: Set default units for weight, distance, etc.
*   `ta generate-completion <shell>`: Generate shell completion scripts (e.g., for bash, zsh, fish).
*   `ta help [COMMAND]`: Print the main help message or the help of a given subcommand.

## Global Options

These options can be used with most `ta` commands:

*   `--export-csv`: Export relevant data to a CSV file. (The exact behavior might depend on the command used with it).
*   `-h, --help`: Print help information.
*   `-V, --version`: Print the version of `ta`.

## Examples

```bash
# Define a new exercise called "Bench Press"
ta create-exercise --name "Bench Press" --type weight_reps # (Assuming arguments for create-exercise)

# List all defined exercises
ta list-exercises

# Add a Bench Press workout
ta add --exercise "Bench Press" --sets 3 --reps 8 --weight 70kg # (Assuming arguments for add)

# List the last 7 days of workouts
ta list --last 7

# Show statistics for "Bench Press"
ta stats --exercise "Bench Press"

# Log your current bodyweight
ta log-bodyweight --weight 75.5

# Set default units to Imperial
ta set-units Imperial

# Get help for the 'add' command
ta add --help
```
*(Note: The exact flags and arguments for subcommands like `create-exercise` or `add` are not detailed in the main help. Users should use `ta <COMMAND> --help` for specific command usage.)*

## Configuration

`ta` stores its data and configuration in user-specific directories.
*   Use `ta db-path` to find the location of your workout database.
*   Use `ta config-path` to find the location of your configuration file.

You can customize various settings using commands like:
*   `set-units`
*   `set-pb-notification` and its variants
*   `set-target-weight`
*   `set-streak-interval`

## Contributing

Contributions are welcome! Please refer to the `CONTRIBUTING.md` file (if it exists) or open an issue/pull request on the project's repository.

(Link to your repository's issues/PR page)

## License

This project is licensed under the [MIT License](LICENSE) (or specify your actual license).
```

**Key things I've done:**

1.  **Standard Structure:** Used a common README layout.
2.  **Extrapolated from Help:** Used the command descriptions from your help output.
3.  **Categorized Commands:** Grouped commands logically for better readability.
4.  **Placeholders:** Added placeholders for things like installation instructions, repository URLs, and specific subcommand argument examples, as these weren't in the provided help.
5.  **Clarifications:** Added notes where assumptions were made (e.g., arguments for `create-exercise`).
6.  **Examples:** Provided a few common usage examples to help users get started.
7.  **Markdown Formatting:** Used Markdown for headers, lists, and code blocks.

You'll need to fill in the placeholders (like installation steps, repository links, and specific argument details for commands if you want them in the main README). This provides a solid foundation.
