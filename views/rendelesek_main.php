

<?php


$connection = Database::getConnection();
$sql = 'SELECT pizza.nev, pizza.kategorianev, pizza.vegetarianus FROM pizza';
$result = $connection->query($sql);
$pizzak = $result->fetchAll(PDO::FETCH_ASSOC);

echo "<table border='1' cellpadding='5'>";
echo "<tr><td align='center'><b>Pizzák</b></td><td align='center'><b>Kategória</b></td><td align='center'><b>Vegetáriánus</b></td><td align='center'><b>Ár</b></td></tr>";
foreach ($pizzak as $pizza) {
    $ar = '';
    switch (trim($pizza['kategorianev'])) {
        case 'király':
            $ar = '1250 Ft';
            break;
        case 'apród':
            $ar = '850 Ft';
            break;
        case 'főnemes':
            $ar = '950 Ft';
            break;
        case 'lovag':
            $ar = '1150 Ft';
            break;
        default:
            $ar = '1000 Ft'; // Alapértelmezett ár
            break;
    
    }
    echo "<tr><td>{$pizza['nev']}</td><td>{$pizza['kategorianev']}</td><td>{$pizza['vegetarianus']}</td><td>{$ar}</td></tr>";
}
echo "</table>";


?>

</table>