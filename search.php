<?php include 'inc/connect.inc.php';?>
<?php include 'inc/head.php';?>
<body>
    <?php include 'inc/navbar.php';?>
	<div class="contact">
		<form method="GET" action="search.php">
			<input type="text" name="search" placeholder="Search">
			<button type="submit">Search</button>
		</form>
		
		<?php
			if (isset($_GET['search'])) {
				$search = $_GET['search'];

			$sql = "SELECT * FROM products WHERE pName LIKE '%$search%'";
				$result = $conn->query($sql);

			if (mysqli_num_rows($result) > 0) {
				echo '<h2 id="schTitle">Search Results</h2>';
				echo '<table class="schTable">';
				echo '<thead><tr><th>Name</th><th>Size</th><th>Price</th><th>Description</th></tr></thead>';
				echo '<tbody>';
				while ($row = mysqli_fetch_assoc($result)) {
				echo '<tr><td>' . $row['pName'] . '</td><td>' . $row['pSize'] . '</td><td>' . $row['pPrice'] . '</td><td>' . $row['pDesc'] . '</td></tr>';
				}
				echo '</tbody></table>';
				} else {
				echo '<p>No results found.</p>';
				}
			}
			$conn->close();
		?>
	</div>

    <?php include 'inc/footer.php';?>
</body>

