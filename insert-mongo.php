<?php
//bisa seperti ini
//$manager = new MongoDB\Driver\Manager("mongodb://user:password@localhost:27017");
//$manager = new MongoDB\Driver\Manager("mongodb://localhost:27017");
//$manager = new MongoDB\Driver\Manager("mongodb://127.0.0.1:27017");
$manager = new MongoDB\Driver\Manager();
$bulkWrite = new MongoDB\Driver\BulkWrite;
$bulkWrite->insert(['nama' => 'Erlangga', 'umur' => 26, 'status' => 'pria']);
$bulkWrite->insert(['nama' => 'Arbi', 'umur' => 31, 'status' => 'pria', 'lahir' => new MongoDB\BSON\UTCDatetime(strtotime('1987-04-02') * 1000)]);
$bulkWrite->insert(['nama' => 'Deswita', 'umur' => 25, 'status' => 'wanita']);
$manager->executeBulkWrite("db_test.tbl_test", $bulkWrite);