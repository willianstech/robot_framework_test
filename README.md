# Robot Framework Test Suite

This repository contains automated API and UI tests for [Reqres](https://reqres.in/) and [The Internet Herokuapp](https://the-internet.herokuapp.com/login) using [Robot Framework](https://robotframework.org/).

## Features

- **API Testing:**
  - Search and delete users via Reqres API.
  - Status code and response validation.
- **UI Testing:**
  - Automated login tests using SeleniumLibrary.
  - Success message verification.

## Technologies

- [Robot Framework](https://robotframework.org/)
- [RequestsLibrary](https://github.com/MarketSquare/robotframework-requests)
- [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary)
- Python 3.x

## Project Structure

```
.
├── resources/
│   └── api_keywords.robot
│   └── ui_keywords.robot
├── results/
│   └── log.html
│   └── output.xml
│   └── report.html
├── tests/
│   └── api_tests.robot
│   └── ui_tests.robot
├── README.md
└── requirements.txt
```

## Setup

1. **Install Python 3.x**
2. **Install dependencies:**
   ```sh
   pip install robotframework
   pip install robotframework-requests
   pip install robotframework-seleniumlibrary
   ```
3. **(Optional) Install browser drivers for Selenium.**

## Running Tests

- **API Tests:**
  ```sh
  robot tests/api_tests.robot
  ```
- **UI Tests:**
  ```sh
  robot tests/ui_tests.robot
  ```
  **Both Tests:**
  ```sh
  python -m robot -d results tests/
  ```

```
## Configuration

- API base URL and keys are set in `resources/api_keywords.robot`.
- UI test URLs are set in `tests/ui_tests.robot`.

## Reporting

Test results and logs are generated in the `results` directory after each run.
```
