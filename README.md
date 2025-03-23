# create-react-secure

A utility script that automatically fixes security vulnerabilities in new React projects created with Create React App.

## The Problem

When creating a new React project using `npx create-react-app`, you'll typically encounter several security vulnerabilities:
- 8 vulnerabilities in total (2 moderate, 6 high)

These vulnerabilities require manual intervention to fix, including:
1. Adding override code to package.json
2. Deleting node_modules directory
3. Deleting package-lock.json
4. Running npm install again

## The Solution

This script automates the entire vulnerability-fixing process for you, saving time and ensuring your React projects start with secure dependencies.

## How It Works

The script:
1. Creates a new React app using Create React App
2. Automatically adds the necessary overrides to package.json
3. Removes vulnerable dependencies
4. Reinstalls all dependencies with the security fixes applied

## Usage

```bash
# Instead of using npx create-react-app my-app
# Use:
create-react-secure my-app
```

## Benefits

- **Time-saving**: No need to manually fix vulnerabilities on every new project
- **Consistent**: Ensures the same security fixes are applied every time
- **Beginner-friendly**: Makes secure React development easier for newcomers

## Installation

1. create a new folder in your home directory.
2. put the scripts inside the new folder
3. open environment variables
4. add the new script path into user variable (e.g C:\User\Scripts )
5. restart your terminal
6. you good to go

## Requirements

- Node.js 
- npm
- npx 

