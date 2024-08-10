<?php
require_once 'models/Restaurant.php';
$restaurants = Restaurant::getAll();
?>

<h2>Restaurants</h2>
<ul>
    <?php foreach ($restaurants as $restaurant): ?>
        <li>
            <a href="index.php?page=food_items&restaurant_id=<?= $restaurant['restaurant_id'] ?>">
                <?= htmlspecialchars($restaurant['name']) ?>
            </a>
        </li>
    <?php endforeach; ?>
</ul>
