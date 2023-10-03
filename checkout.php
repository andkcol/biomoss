<?php include 'inc/head.php';?>
<body id="backg">

<?php include 'inc/navbar.php';?>

  <div class="container1">
      <h2 id="Checkout">Billing Information</h2>
    <form action="/action_page.php">
      <label for="fname">Full Name</label>
      <input type="text" id="fname" name="fullname" placeholder="John Smith" required>

      <label for="email">Email</label>
      <input type="email" id="email" name="email" placeholder="Johnsmith123@gmail.com" required>

      <label for="address">Address</label>
      <input type="text" id="address" name="address" placeholder="54 Sandymount road" required>

      <label for="eircode">Eircode</label>
      <input type="text" id="eircode" name="eircode" placeholder="D4HKPG" required>

      <label for="country">Country</label>
      <select id="country" name="country">
        <option value="ireland">Ireland</option>
        <option value="uk">UK</option>
      </select>
  </div>

  <div class="container2">
      <h2 id="Checkout">Payment Details</h2>
    <form action="/action_page.php">
      <label for="fname">Name of cardholder</label>
      <input type="text" id="fname" name="fullname" placeholder="John Smith" required>

      <label for="Cnumber">Card number</label>
      <input type="text" id="Cnumber" name="email" placeholder="5967 8550 5704 8215" required>

      <label for="exMonth">Expiry Month</label>
      <select id="Month" name="Month">
        <option value="jan">January</option>
        <option value="feb">February</option>
        <option value="mar">March</option>
        <option value="apr">April</option>
        <option value="may">May</option>
        <option value="jun">June</option>
        <option value="jul">July</option>
        <option value="aug">August</option>
        <option value="sep">September</option>
        <option value="oct">October</option>
        <option value="nov">November</option>
        <option value="dec">December</option>
      </select>

      <label for="exYear">Expiry Year</label>
      <select id="Year" name="Year">
        <option value="2023">2023</option>
        <option value="2024">2024</option>
        <option value="2025">2025</option>
        <option value="2026">2026</option>
        <option value="2027">2027</option>
        <option value="2028">2028</option>
        <option value="2029">2029</option>
        <option value="2030">2030</option>
      </select>

      <label for="CVV">CVV</label>
      <input type="text" id="Cvv" name="CVV" placeholder="025" required>

      <label for="discount">Discount codes</label>
      <input type="text" id="discount" name="discount" placeholder="First class" >

      <p>If you would like to avail of our discount codes go to this page: <a href='news.php'>Discounts</a></p>
    
      
    </form>
    <a href='thanks.php'><button class="btn">Checkout</button></a>
  </div>

  <?php include 'inc/footer.php'?>
</body>