<?php


session_start();
include "inc/functions.php";

$categories = getALLCategories();

if (!empty($_POST)){ // button search clicked

     
	 $produits = searchProduits($_POST['search']);
	 	 	 
}else{

     $produits = getALLProducts();
}




?>




<!doctype html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Yamen Shop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  </head>
  <body>
  
  <?php
  
  include "inc/header.php";
  
  
  ?>


<div class="row col-12 mt-4">


<?php
 
      foreach($produits as $produit){
       
	   
	  print '<div class="col-3">
	      <div class="card" style="width: 18rem;">
  <img src="images/'.$produit['image'].'" class="card-img-top" alt="">
  <div class="card-body">
    <h5 class="card-title">'.$produit['nom'].'</h5>
    <a href="produit.php?id='.$produit['id'].'" class="btn btn-primary">Afficher</a>
  </div>
</div>
 </div>';

}


?>





<?php

include "inc/footer.php";

?>




 
  </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</html>