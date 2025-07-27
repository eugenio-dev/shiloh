# Shiloh [Work in Progress]

An AS2 Virtual World built with Node.js.

## 🚧 Work in Progress

This is an early development version - features and APIs may change frequently.

## ⭐ Current Features 

- Basic server infrastructure
- Login/Register system
- Room navigation
- Adding items
- Basic game and player interactions

## 🔜 Planned Features

- Mini games
- Furniture/Igloo system
- Pet adoption (puffles)
- Moderation tools
- Chat filters
- Custom commands

## 🛠️ Built With

- Node.js
- Express
- Laragon
- MySQL

## Disclaimer

**This project is intended solely for educational and personal use.**

**It is strictly non-commercial and not intended for public release or monetization.**


## How to use

## 1. Install Development Environment

* Download and install Laragon from https://laragon.org/
* This will serve as your local development environment

## 2. Download Files

* Download assets and place them in the `www/` folder of your Laragon installation

## 3. Database Setup

1. Launch Laragon and ensure MySQL is running
2. Using HeidiSQL, create a new database named "Shiloh"
3. Import the `shiloh.sql` file into this database

## 4. Install Dependencies

1. Open Laragon's terminal
2. Navigate to your project directory
3. Run `npm install`

## 5. Start the Game

1. Start the web server through Laragon
2. In terminal, run `npm start` in the Shiloh folder
3. Open your browser and go to http://localhost/

## 6. For Flash Client

If using Flash client/player, load: **http://localhost/play/src/load.swf?2**