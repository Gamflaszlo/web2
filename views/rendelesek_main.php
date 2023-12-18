<p>
    <table border="1" cellpadding="5">
        <rt>
            <td align = "center"> <b>Pizzák<b> </td>
</tr>

<?php


$connection = Database::getConnection();
$sql = 'select nev from pizza';
$result = $connection->query($sql);
$nevek = $result->fetchAll(PDO::FETCH_ASSOC);
$v = var_export($nevek, true);


echo "<tr><td>$v </td></tr>";










?>

</table>
     