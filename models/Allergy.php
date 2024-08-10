<?php
require_once 'config/database.php';

class Allergy {
    public static function getByFoodItem($food_item_id) {
        global $pdo;
        $stmt = $pdo->prepare(
            "SELECT a.name 
             FROM Allergies a
             JOIN Food_Item_Allergies fia ON a.allergy_id = fia.allergy_id
             WHERE fia.food_item_id = :food_item_id"
        );
        $stmt->execute(['food_item_id' => $food_item_id]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>
