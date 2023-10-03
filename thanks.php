<?php include 'inc/head.php';?>
<body id="backg">

    <?php include 'inc/navbar.php';?>

    <div class="content">
        <h2>Thank you for your order! Your order details are below!</h2>
        <table id="cTable">
            <thead>
                <tr>
                    <th class="cartDetail" id="cartHead">Order No.</th>
                    <th class="cartDetail" id="cartHead">Products</th>
                    <th class="cartDetail" id="cartHead">Total</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="cartDetail">5321</td>
                    <td class="cartDetail"><img src="images/btl1.png" alt="BioMoss Daily Natural moisturising cream" class="productImg">
                    BioMoss Daily Natural moisturising cream</br><img src="images/btl2.png" alt="BioMoss Daily Natural moisturising cream" class="productImg">
                    BioMoss Glow Booster Serum</td>
                    <td class="cartDetail">60</td>
                </tr>                
            </tbody>
        </table>
    </div>
    <?php include 'inc/footer.php'?>
</body>