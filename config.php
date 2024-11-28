<?php

class Database
{
    private $host = "localhost";      // Nama host
    private $username = "root";       // Username
    private $password = "";           // Password
    private $db_name = "db_sipp"; // Nama database
    private $conn;                    // Properti untuk koneksi

    // Constructor untuk membuat koneksi saat objek dibuat
    public function __construct()
    {
        $this->conn = new mysqli($this->host, $this->username, $this->password, $this->db_name);

        // Cek koneksi
        if ($this->conn->connect_error) {
            die("Koneksi gagal: " . $this->conn->connect_error);
        }
    }

    // Metode untuk menjalankan query
    public function query($sql)
    {
        $result = $this->conn->query($sql);

        if (!$result) {
            die("Error: " . $this->conn->error);
        }

        return $result;
    }

    // Metode untuk mencegah SQL Injection
    public function escape($string)
    {
        return $this->conn->real_escape_string($string);
    }

    // Tutup koneksi
    public function close()
    {
        $this->conn->close();
    }
}
?>
