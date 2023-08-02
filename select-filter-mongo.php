<?php
$manager = new MongoDB\Driver\Manager();
$filter = ['umur' => ['$lt' => 31]];
$options = [];
$query = new MongoDB\Driver\Query($filter, $options);
$cursor = $manager->executeQuery("db_test.tbl_test", $query);
//convert cursor menjadi array
    $cursor->setTypeMap(['root' => 'array', 'document' => 'array', 'array' => 'array']);
    $cursor = $cursor->toArray();
foreach ($cursor as $document) {
        //convert id menjadi array
        $document['_id'] = (array) $document['_id'];
    echo '<pre>';
    print_r($document);
    echo '</pre>';
}