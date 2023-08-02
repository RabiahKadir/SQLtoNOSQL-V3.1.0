<?php
$manager = new MongoDB\Driver\Manager();
$query = new MongoDB\Driver\Query( [] );
$cursor = $manager->executeQuery("db_test.tbl_test", $query);
foreach ($cursor as $document) {
    echo '<pre>';
    print_r($document);
    echo '</pre>';
}