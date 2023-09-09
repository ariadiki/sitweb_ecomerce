<?php
include 'include/header.php';
$id_cl = $_GET['id'];
$client = $con->query("SELECT * FROM `client` WHERE `C_id` = '$id_cl'");
$client = $client->fetch_assoc();

// If the client is not logged in, you can redirect them to the login page
if (!$client) {
    header('Location: login.php'); // Replace 'login.php' with your login page URL
    exit;
}
?>

<div class="container">
    <h2>Bonjour, <?=$client['c_nom']?> <?=$client['c_prenom']?>!</h2>

    <!-- Display client information -->
    <div class="profile-info">
        <p><strong>Name:</strong> <?=$client['c_nom']?> <?=$client['c_prenom']?></p>
        <p><strong>Email:</strong> <?=$client['c_email']?></p>
        <p><strong>Sex:</strong> <?=$client['c_sex']?></p>
        <p><strong>Country:</strong> <?=$client['c_contry']?></p>
        <p><strong>City:</strong> <?=$client['c_ville']?></p>
        <p><strong>Phone:</strong> <?=$client['c_tele']?></p>
    </div>
</div>
<?php
include 'include/footer.php';
?>
