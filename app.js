const express = require("express"); // Import the Express framework
const bodyParser = require("body-parser"); // Middleware to parse request bodies
const mysql = require("mysql"); // Import the MySQL library

const app = express(); // Create an instance of the Express application

app.use(bodyParser.urlencoded({ extended: true })); // Middleware to parse URL-encoded request bodies
app.use(bodyParser.json()); // Middleware to parse JSON request bodies
app.use(express.static("public"));
app.set("view engine", "ejs");

const con = mysql.createConnection({
  host: "localhost", // Database server host
  user: "root", // Database user
  password: "", // Database user's password
  database: "my_experiences", // Database name
});

con.connect(function (err) {
  if (err) throw err; // Handle database connection errors
  console.log("Connected Successfully"); // Log successful database connection
});

app.get("/search", function (req, res) {
    res.render("search");
  });

app.get("/add-experience", function (req, res) {
    res.render("add-experience");
  });
app.get("/map", function (req, res) {
    res.render("map");
  });
app.get("/", function (req, res) {
    res.render("map-new");
  });

// API endpoint to look up all activities
app.get("/activities", function (req, res) {
    const query = `SELECT * FROM experiences`; // SQL query to select all experiences
    con.query(query, function (err, results) {
      if (err) {
        console.error(err); // Log any database query errors
        res.status(500).json({ error: "Internal server error" }); // Send a 500 error response in case of an error
      } else {
        res.status(200).json(results); // Send a JSON response with the query results
      }
    });
  });

// API endpoint to look up activities in a given region
app.get("/activities/:region", function (req, res) {
  const region = req.params.region; // Get the region parameter from the request URL
  const query = `SELECT * FROM experiences WHERE region = ?`; // SQL query to select experiences in the specified region
  con.query(query, [region], function (err, results) {
    if (err) {
      console.error(err); // Log any database query errors
      res.status(500).json({ error: "Internal server error" }); // Send a 500 error response in case of an error
    } else {
      res.status(200).json(results); // Send a JSON response with the query results
    }
  });
});

// API endpoint to add a new experience
app.post("/add-experience", function (req, res) {
    console.log(req.body);
  const { exp_name, exp_type, country, region, lon, lat, exp_description } =
    req.body; // Extract experience details from the request body
  if (!exp_name || !exp_type || !country || !region || !lon || !lat || !exp_description) {
    res.status(400).json({ error: "All fields must be provided" }); // Validate and send a 400 error response if any required field is missing
    return;
  }

  const query = `INSERT INTO experiences (exp_name, exp_type, country, region, lon, lat, exp_description, bookings) VALUES (?, ?, ?, ?, ?, ?, ?, 0)`; // SQL query to insert a new experience into the database
  con.query(
    query,
    [exp_name, exp_type, country, region, lon, lat, exp_description],
    function (err, result) {
      if (err) {
        console.error(err); // Log any database query errors
        res.status(500).json({ error: "Internal server error" }); // Send a 500 error response in case of an error
      } else {
        res.status(201).json({ success : true, message: "Experience added successfully" }); // Send a 201 response if the experience is added successfully
      }
    }
  );
});

// API endpoint to book an experience
app.post("/book-experience/:expID", function (req, res) {
  const expID = req.params.expID; // Get the expID from the request body
  if (!expID) {
    res.status(400).json({ error: "Experience ID must be provided" }); // Validate and send a 400 error response if expID is missing
    return;
  }

  const query = `UPDATE experiences SET bookings = bookings + 1 WHERE id = ?`; // SQL query to update the number of bookings for an experience
  con.query(query, [expID], function (err, result) {
    if (err) {
      console.error(err); // Log any database query errors
      res.status(500).json({ error: "Internal server error" }); // Send a 500 error response in case of an error
    } else if (result.affectedRows === 0) {
      res.status(404).json({ error: "Experience not found" }); // Send a 404 error response if the specified experience is not found
    } else {
      res.status(200).json({ message: "Experience booked successfully" }); // Send a 200 response if the booking is successful
    }
  });
});

app.listen(3000, function () {
  console.log("Server Started on port 3000"); // Start the server on port 3000 and log a message when it starts
});
