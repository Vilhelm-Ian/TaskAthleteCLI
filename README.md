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
# The executable will be in target/release/taragte
