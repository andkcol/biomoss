<?php include 'inc/head.php';?>
<body id="backg">

    <?php include 'inc/navbar.php';?>

    <div class="contact">
        <form action="MAILTO:biomoss@outlook.com" method="post" class="form">
            <label for="Name"></label>
            <div>
                <input type="text" name="Name" placeholder="Name" required>
            </div>

            <label for="Email"></label>
            <div>
                <input type="email" name="Email" id="email" placeholder="Email" required>
            </div>

            <label for="Message"></label>
            <div>
                <textarea name="Message" id="message" placeholder="Your message" rows="10" maxlength="150" required></textarea>
            </div>

            <div>
                <button type="submit">Send Message</button>
                <input type="reset" value="Reset">
            </div>
        </form>
    </div>
    <?php include 'inc/footer.php'?>
</body>