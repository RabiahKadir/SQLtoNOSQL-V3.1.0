<?php
exec('java -jar smartdb-adapter.jar -i',$output);
echo $output[1];
?>