# SQL Injection Game

This was a challenge I wrote as a junior in high school for TJCSC's WinterCTF that occured in December, 2023!

It is a 3-stage challenge consisting of:
1: Vulnerable SQLite login
2. Library of Babel OSINT
3. Hundreds of generated anchor links where only one contains the flag (created by `generate.py`)

The site is currently hosted on <https://sql-injection-game.onrender.com/>.

However, you can run locally using the following:

1. Seed the database:

```powershell
python resetdb.py
```

2. Start the server:

```powershell
node index.js
# http://localhost:8080
```

Docker

```powershell
docker build -t sql-injection-game:local .
docker run --rm -p 8080:8080 sql-injection-game:local
```
