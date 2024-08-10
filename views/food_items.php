<?php
require_once 'models/FoodItem.php';
require_once 'models/Allergy.php';

if (isset($_GET['restaurant_id'])) {
    $foodItems = FoodItem::getByRestaurant($_GET['restaurant_id']);
    ?>

    <h2>Food Items</h2>
    <ul>
        <?php foreach ($foodItems as $item): ?>
            <li>
                <?= htmlspecialchars($item['name']) ?> - $<?= htmlspecialchars($item['price']) ?>
                <br>
                <strong>Allergies:</strong>
                <ul>
                    <?php 
                    $allergies = Allergy::getByFoodItem($item['food_item_id']);
                    foreach ($allergies as $allergy): ?>
                        <li><?= htmlspecialchars($allergy['name']) ?></li>
                    <?php endforeach; ?>
                </ul>
            </li>
        <?php endforeach; ?>
    </ul>

    <?php
} else {
    echo "<p>No restaurant selected.</p>";
}
?>
