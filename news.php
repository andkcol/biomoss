<?php include 'inc/connect.inc.php';?>
<?php include 'inc/head.php';?>

<body id="backg">
    <?php include 'inc/navbar.php';?>
    <div class="contact">
        <h2>Enter your email to recieve discount codes:</h2>
        <form method="post" action="news.php">
            <input type="email" id="email" name="email" required>
            <button type="submit">Submit</button>
        </form>

        <?php
        if (isset($_POST['email'])) {
            $email = $_POST['email'];
            $sql = "INSERT INTO users (uEmail) VALUES ('$email')";
            $result = mysqli_query($conn, $sql);
            echo "Thank you! Your promo codes will be will you shortly!";
        }
        mysqli_close($conn);
        ?>
    </div>
    <?php include 'inc/footer.php';?>
</body>