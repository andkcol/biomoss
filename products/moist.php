<?php include '../inc/connect.inc.php';?>
<?php include '../inc/header.php';?>
<body id="backg">

    <?php include '../inc/nav.php';?>
    <div>
        <img src="../images/btl1.png" alt="Moisturiser" id="prod1img">
    </div>
    <div class="desc">
        <?php
            $sql = "SELECT * FROM products WHERE pCode = 101.001";
            $result = mysqli_query($conn, $sql);
            while ($row = mysqli_fetch_assoc($result)) {
                $name = $row['pName'];
                $desc = $row['pDesc'];
                $price = $row['pPrice'];
                $key = $row['pKeyIng'];
                $dir = $row['pDirToUse'];
                echo "<h2>$name</h2>";
                echo "<br>";
                echo $desc;
                echo "<br>";
                echo "<br>";
                echo "Size:";
                echo "<a href='moist.php'><button>30 ml</button></a>";
                echo "<a href='moist80.php'><button>90 ml</button></a>";
                echo "<br>";
                echo "<br>";
                echo "<h3>&euro;$price</h3>";
                echo "<br>";
                echo "<a href='../cart.php'><button>Add to Cart</button></a>";
                echo "<br>";
                echo "<h4>Key Ingredients: </h4>";
                echo $key;
                echo "<br>";
                echo "<br>";
                echo "<h4>Directions: </h4>";
                echo $dir;
            }
            mysqli_close($conn);
        ?>
    </div>

    <?php include '../inc/foot.php'?>
        
</body>