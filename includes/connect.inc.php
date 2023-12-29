<?php
$servername = "localhost"; // A szerver neve, általában localhost
$username = "username"; // Az adatbázis felhasználóneve
$password = "password"; // Az adatbázis jelszava
$dbname = "pizza"; // Az adatbázis neve

// Kapcsolat létrehozása
$conn = new mysqli($servername, $username, $password, $dbname);

// Kapcsolat ellenőrzése
if ($conn->connect_error) {
  die("Kapcsolódási hiba: " . $conn->connect_error);
}
?>