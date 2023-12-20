<section class = "felso"  >
<p> Írd ide a kommentet</p><br/>

<form method="POST">

</br>
<textarea rows="10" cols="80" name="comit">

</textarea><br/>
<input type="submit" name="kuld" 
                 values="Kuld"/>

</form><br/>
<?php

 
 
 $connection = Database::getConnection();
 $sqlInsert = "INSERT INTO hozzaszolas(id,hozzasz) Values (0,:hozzasz)";
 
                $stmt = $connection->prepare($sqlInsert); 
                $stmt->execute(array(':hozzasz' => $_POST['Kuld'])); 
                
?>


</section>

<section class= " felso2"> 

</section>

<section class= "also">
    dsdsd
</section> 