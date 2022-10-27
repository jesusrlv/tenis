<?php
    include('../../query/qconn/qc.php');
?>

<!-- canvas -->

<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
  <div class="offcanvas-header border-bottom">
    <h5 id="offcanvasRightLabel"><i class="bi bi-cart-plus"></i> Carrito de compras</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body border-bottom">
  
        <div class="row-12">
          <form action="query/q_guardar_datos.php" method="POST" class="">
          <div class="input-group input-group-sm mb-1 border rounded  ">
            <span class="text-center" style="width:61%"><small>Producto</small></span>
            <span class="text-center" style="width:16%"><small>Precio</small></span>
            <span class="text-center" style="width:15%"><small>Talla</small></span>
            <span class="text-center" style="width:8%"><small><i class="bi bi-x-circle-fill text-white"></i></small></span>
          </div>
            <p id="compracarrito"></p>
            <button class="btn btn-primary w-100 mb-1" type="button" id="btncerrar" onclick="cambiarHidden()"><i class="bi bi-cart-plus"></i> Pagar carrito</button>
                
                <div class="col-12">
                  <div class="alert alert-primary" role="alert">
                    <strong>Número de productos: </strong><span id="contadorInputs" name=""></span>
                    <hr>
                    <strong>Total: </strong><span id="totalSpans" name=""></span>
                  </div>
                    <input hidden name="total_precio" id="inputsval" type="text" class="form-control w-50" placeholder="" aria-label="Username" aria-describedby="basic-addon1" READONLY>
                    <input hidden name="num_prod" id="totalprice" type="text" class="form-control w-50" placeholder="" aria-label="Username" aria-describedby="basic-addon1" READONLY>
                </div>
        </div>

        <div class="row-12 border-top mt-3" id="cambiohidden">

          <div class="col mt-2">
            <div class="mb-3">
              <label for="formGroupExampleInput" class="form-label"><small><i class="bi bi-person-circle"></i> Nombre completo</small></label>
              <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Nombre..." name="nombre" REQUIRED>
            </div>
            <div class="mb-3">
              <label for="formGroupExampleInput" class="form-label"><small><i class="bi bi-card-heading"></i> Dirección</small></label>
              <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Dirección..." name="direccion" REQUIRED>
            </div>
            <div class="mb-3">
              <label for="formGroupExampleInput" class="form-label"><small><i class="bi bi-phone"></i> Teléfono</small></label>
              <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Teléfono..." name="tel" onkeypress="ValidaSoloNumeros()" REQUIRED>
            </div>
            <div class="mb-3">
              <label for="formGroupExampleInput" class="form-label"><small><i class="bi bi-envelope-fill"></i> Correo electrónico (opcional)</small></label>
              <input type="email" class="form-control" id="formGroupExampleInput" placeholder="Correo electrónico..." name="email">
            </div>

            <div class="alert alert-danger border-danger" role="alert">
              <p class="text-center h2"><i class="bi bi-exclamation-diamond-fill"></i></p>
              <p class="text-center h2"><strong>¡ATENCIÓN!</strong></p>  
                <hr class="bg-danger">
                Un asesor se pondrá en contacto contigo para realizar la entrega.
            </div>  


            </div>
            <button type="submit" class="btn btn-primary w-100"><i class="bi bi-cart-plus"></i> Realizar pedido</button>  
          </form>
          </div>
          
        </div>
    
  </div>
</div>

<script>
  function cambioInput() {
    var inputs = document.getElementById("offcanvasRight").getElementsById("contadorId");
    alert("Valor recibido: " + inputs);
  }
</script>

<script>
  document.getElementById('cambiohidden').style.visibility = 'hidden';
function cambiarHidden(){
  document.getElementById('cambiohidden').style.visibility = 'visible';
  // document.getElementById('btncerrar').style.visibility = 'hidden';
  document.getElementById('btncerrar').disabled = true;
  
  // https://www.w3schools.com/jsref/prop_style_visibility.asp
}

//Función que permite solo Números
function ValidaSoloNumeros() {
 if ((event.keyCode < 48) || (event.keyCode > 57)) 
  event.returnValue = false;
}
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- https://es.stackoverflow.com/questions/70426/buscar-numero-de-tarjeta-de-credito-en-un-input-o-textbox-posterior-a-esto-remo -->
<script>
  function getCardType(cardNo) {
  var cards = {
    "American Express": /^3[47][0-9]{13}$/,
    "Mastercard": /^5[1-5][0-9]{14}$/,
    "Visa": /^4[0-9]{12}(?:[0-9]{3})?$/
  };
  
  for(var card in cards) {
    if (cards[card].test(cardNo)) {
      return card;
    }
  }
  
  return undefined;
}

// $('input').on('change', function() {
$('input[id="tarjetaNum"]').on('change', function() {
  var tarjeta = $(this).val().trim();

  alert ('Número de tarjeta agregado '+ tarjeta);
  document.getElementById("tarjeta2").value = tarjeta;
  var value = $(this).val().trim();
  
  var cardType = getCardType(value);
  
  if (!cardType) {
    alert('tarjeta invalida');
  } else {
    // alert('tarjeta tipo:' + cardType);
    document.getElementById('tipoTarjeta').value = cardType;
    $(this).val(Array(value.length-4).join("X")+value.substring(value.length-4));
  }      
});
</script>


<!-- ejemplos de cards -->
<!-- https://bbbootstrap.com/snippets/bootstrap-5-simple-information-card-85881560 -->
<!-- https://bbbootstrap.com/ -->