# Celestial Bodies PostgreSQL Project 🌌

This project is part of the [freeCodeCamp Relational Database Certification](https://www.freecodecamp.org/learn/relational-database/) and focuses on building and managing a relational database of celestial bodies using PostgreSQL.

The goal is to demonstrate proficiency in database design, table relationships, data types, and SQL querying.

## 🚀 Overview

The database contains structured information about:

- **Galaxies**
- **Stars**
- **Planets**
- **Moons**
- **Additional metadata**

Each table includes relevant attributes, constraints (like NOT NULL and UNIQUE), and foreign key relationships to simulate a realistic astronomical dataset.

## 🛠 Technologies Used

- PostgreSQL
- `psql` CLI
- Bash (for managing database dumps)
- Gitpod VM environment

## 📄 File Included

- `universe.sql`:  
  Contains the full SQL dump of the created database, including schema and sample data. You can use this to recreate the database on your own machine.

## 🧪 How to Use

1. Clone this repo:
   ```bash
   git clone https://github.com/sinakiamehr/celestial_bodies_PostgreSQL.git
   cd celestial_bodies_PostgreSQL
2. Load the database in PostgreSQL:
   ```bash
   psql -U postgres < universe.sql
3. Start exploring the universe!
Use queries like:
   ```bash
   SELECT * FROM galaxy;
   SELECT name FROM planet WHERE has_life = true;
## 🌟 Author
- Sina Kiamehr
