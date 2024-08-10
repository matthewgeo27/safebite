<?php
require_once 'config/database.php';

class FoodItem {
    public static function getByRestaurant($restaurant_id) {
        global $pdo;
        $stmt = $pdo->prepare("SELECT * FROM Food_Items WHERE restaurant_id = :restaurant_id");
        $stmt->execute(['restaurant_id' => $restaurant_id]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>
