

<section class = "felso"  >

<br>Lázi AND Kliman Pizzeria<br>
Cím:
Kecskemét Izsáki ut 2
<table>


</table>
</section>

<section class= " felso2"> 
    <label>
<Form method="POST">
<select name="valu">
                
                <option value="USD">USD</option>
                <option value="EUR">EUR</option>
                <option value="CHF">CHF</option>
                
            </select>
            <input type="submit" name="szamol" 
                 values='valu'/>
            
        

         </Form>
        <?php
    
class Arfolyam {
    
function lekerdezes($currency = '') {
    

    $client = new SoapClient("http://www.mnb.hu/arfolyamok.asmx?wsdl");
    $response = $client->__soapCall("GetCurrentExchangeRates", array());

    $doc = new DOMDocument;
    $doc->loadXML($response->GetCurrentExchangeRatesResult);
    $xpath = new DOMXPath($doc);

    $query = "//MNBCurrentExchangeRates/Day/Rate[@curr='$currency']";
    $entries = $xpath->query($query);

    if ($entries->length) {
        return $currency.": ".$entries->item(0)->nodeValue;
    } else {
        return "Nem tölthető be az árfolyam.";  
    }
}
}


if($_POST['valu'] == 0) {
echo "Kérem válasszon devizanemet";
} else {



$valut = $_POST['valu'];


$arfolyam = new Arfolyam;
echo $arfolyam->lekerdezes($valut);
}
?>
            
</section>

<section class= "also">
<?php

?>

</section> 
