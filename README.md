# A2SV Hub Robot Framework Tests

This test suite automates testing of the A2SV Hub website using Robot Framework with SeleniumLibrary.

## Project Structure

```
robot/
├── requirements.txt
├── resources/
│   └── common.robot
├── tests/
│   ├── login.robot
│   ├── setting.robot
│   └── profile.robot
└── README.md
```

## Setup Instructions

1. Install Python 3.8 or higher
2. Install required packages:
   ```bash
   pip install -r requirements.txt
   ```
3. Install Chrome WebDriver:
   - The webdriver-manager package will handle this automatically
   - Make sure you have Chrome browser installed

4. Create a `.env` file in the project root with your credentials:
   ```
   A2SV_EMAIL=your_email@example.com
   A2SV_PASSWORD=your_password
   ```

## Running Tests

To run all tests:
```bash
robot tests/
```

To run specific test files:
```bash
robot tests/login.robot
robot tests/setting.robot
robot tests/profile.robot
```

To generate reports:
```bash
robot --outputdir results tests/
```

## Test Structure

- `login.robot`: Tests login functionality
  - Valid login
  - Invalid login

- `dashboard.robot`: Tests dashboard features
  - Dashboard elements
  - Navigation links

- `exercises.robot`: Tests exercises functionality
  - Exercises page elements
  - Problem filtering
  - Problem details

- `profile.robot`: Tests profile functionality
  - Profile elements
  - Edit profile
  - Profile statistics

## Notes

- Tests use explicit waits to handle dynamic content loading
- Each test suite handles its own setup and teardown
- Common keywords are defined in `resources/common.robot`
- Make sure to update the `.env` file with valid credentials before running tests #   A 2 S V - h u b _ T e s t i n g  
 