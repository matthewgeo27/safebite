<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once 'views/header.php';

// Default content
$page = 'home'; // Set a default page

// Check if a specific page is requested
if (isset($_GET['page'])) {
    $page = $_GET['page'];
}

// Include content based on the requested page
switch ($page) {
    case 'restaurants':
        require_once 'views/restaurants.php';
        break;
    case 'food_items':
        require_once 'views/food_items.php';
        break;
    case 'allergies':
        require_once 'views/allergies.php';
        break;
    case 'contact':
        require_once 'views/contact.php'; // Assuming you have a contact page
        break;
    default:
        echo "<h2>Welcome to SafeBite</h2><p>Select an option from the menu to get started.</p>";
        break;
}

require_once 'views/footer.php';
?>
