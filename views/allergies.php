<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once 'config/database.php'; // Adjust path if necessary
require_once 'models/Allergy.php'; // Ensure this path is correct
require_once 'views/header.php'; // Ensure this path is correct

// Check if a food item ID is provided
$food_item_id = isset($_GET['food_item_id']) ? $_GET['food_item_id'] : null;

// Fetch allergies based on food item ID if provided
if ($food_item_id) {
    $allergies = Allergy::getByFoodItem($food_item_id); // Retrieve allergies for the specified food item
} else {
    // If no food item ID is provided, display a message or redirect as needed
    echo "<h2>Please provide a food item ID to see allergies.</h2>";
    echo '<a href="index.php">Back to Home</a>';
    exit; // Stop execution if no food item ID is given
}
?>

<h2>Allergies for Food Item ID: <?= htmlspecialchars($food_item_id) ?></h2>
<ul>
    <?php if (count($allergies) > 0): ?>
        <?php foreach ($allergies as $allergy): ?>
            <li>
                <?= htmlspecialchars($allergy['name']) ?>
            </li>
        <?php endforeach; ?>
    <?php else: ?>
        <li>No allergies found for this food item.</li>
    <?php endif; ?>
</ul>

<a href="index.php">Back to Home</a>

<?php
require_once '../views/footer.php'; // Ensure this path is correct
?>
