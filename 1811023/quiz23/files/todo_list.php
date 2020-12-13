<?php
$user = "jpcabral-tip";
$password = "password";
$database = "example_database";
$table = "todo_list";

try {
	$db = new PDO("mysql:host=localhost;dbname=$database", $user, $password);
	echo "<h2>TODO</h2><ol>";
	foreach($db->query("SELECT content FROM $table") as $row){
		echo "<li>" . $row['content'] . "</li>";
	}
	echo "</ol>";
} catch (PDOExecption $e){
	print "Error!: " . $e->getMessage() . "<br/>";
	die();
}
