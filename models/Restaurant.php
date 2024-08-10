<?php
require_once 'config/database.php';

class Restaurant {
    public static function getAll() {
        global $pdo;
        $stmt = $pdo->query("SELECT * FROM Restaurants");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>
