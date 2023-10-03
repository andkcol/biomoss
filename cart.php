<?php include 'inc/head.php';?>
<body id="backg">
    <?php include 'inc/navbar.php';?>
    
    <header id="cHeader">
        <h1 id="cartH1">Shopping Cart</h1>
    </header>

    <div>
        <table id="cTable">
            <thead>
                <tr>
                    <th class="cartDetail" id="cartHead">Product</th>
                    <th class="cartDetail" id="cartHead">Price</th>
                    <th class="cartDetail" id="cartHead">Quantity</th>
                    <th class="cartDetail" id="cartHead">Subtotal</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="cartDetail"><img src="images/btl1.png" alt="BioMoss Daily Natural moisturising cream" class="productImg">
                    BioMoss Daily Natural moisturising cream</td>
                    <td class="cartDetail">€30</td>
                    <td class="cartDetail"><input type="number" value="1"></td>
                    <td class="cartDetail"><button class="btn">Remove</button></td>
                </tr>
                <tr>
                    <td class="cartDetail">
                    <img src="images/btl2.png" alt="BioMoss Daily Natural moisturising cream" class="productImg">
                    BioMoss Glow Booster Serum</td>
                    <td class="cartDetail">€30</td>
                    <td class="cartDetail"><input type="number" value="1"></td>
                    <td class="cartDetail"><button class="btn">Remove</button></td>
                </tr>
            </tbody>
        </table>
        <a href='checkout.php'><button id="cartBtn">Checkout</button></a>
    </div>
    <?php include 'inc/footer.php';?>
</body>