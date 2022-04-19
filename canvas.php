<?php
    include('query/qconn/qc.php');
?>

<!-- canvas -->

<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
  <div class="offcanvas-header border-bottom">
    <h5 id="offcanvasRightLabel"><i class="bi bi-cart-plus"></i> Carrito de compras</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body border-bottom">
  
        <div class="row-12">
          <!-- <form action="query/q_guardar_datos.php" method="POST" class="" onchange="cambioInput()"> -->
          <form action="query/q_guardar_datos.php" method="POST" class="">
                <p id="compracarrito"></p>
                <!-- <hr class="w-100 justify-aligment-center"> -->
            <!-- </form> -->
            <button class="btn btn-primary w-100 mb-1" type="button" id="btncerrar" onclick="cambiarHidden()"><i class="bi bi-cart-plus"></i> Pagar carrito</button>
                
                <div class="col-12">
                  <div class="alert alert-primary" role="alert">
                    <strong>Número de productos: </strong><span id="contadorInputs" name=""></span>
                    <hr>
                    <strong>Total: </strong><span id="totalSpans" name=""></span>
                  </div>
                    <!-- <input type="text" id="inputsval" name="num_prod"> -->
                    <input hidden name="total_precio" id="inputsval" type="text" class="form-control w-50" placeholder="" aria-label="Username" aria-describedby="basic-addon1" READONLY>
                    <input hidden name="num_prod" id="totalprice" type="text" class="form-control w-50" placeholder="" aria-label="Username" aria-describedby="basic-addon1" READONLY>
                    <!-- <input type="text" id="totalprice" name="total_precio"> -->
                </div>

                <script>
                  // function valores(){
                  //   var x = document.getElementById('contadorInputs').value;
                  //   var y = document.getElementById('totalSpans').value;

                  //   document.getElementById('inputsval').value = x;
                  //   document.getElementById('totalprice').value = y;
                  // }

                </script>

               
                  
                <!-- <div class="col-12 mt-0">
                  <div class="alert alert-primary" role="alert">
                    <strong>Total: </strong><span id="totalSpans"></span>
                  </div>
                </div> -->
                <!-- <div class="4">
                </div> -->
        </div>

        <div class="row-12 border-top mt-3" id="cambiohidden">

          <div class="col mt-2">
            <div class="mb-3">
              <label for="formGroupExampleInput" class="form-label"><small><i class="bi bi-person-circle"></i> Nombre completo</small></label>
              <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Nombre..." name="nombre">
            </div>
            <div class="mb-3">
              <label for="formGroupExampleInput" class="form-label"><small><i class="bi bi-card-heading"></i> Dirección</small></label>
              <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Dirección..." name="direccion">
            </div>
            <div class="mb-3">
              <label for="formGroupExampleInput" class="form-label"><small><i class="bi bi-phone"></i> Teléfono</small></label>
              <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Teléfono..." name="tel" onkeypress="ValidaSoloNumeros()">
            </div>
            <div class="mb-3">
              <label for="formGroupExampleInput" class="form-label"><small><i class="bi bi-envelope-fill"></i> Correo electrónico</small></label>
              <input type="email" class="form-control" id="formGroupExampleInput" placeholder="Correo electrónico..." name="email">
            </div>
            <div class="mb-3">
              <label for="formGroupExampleInput" class="form-label"><small><i class="bi bi-credit-card-2-back"></i> Tarjeta para pago</small></label>
              
              <input type="text" id="tarjeta2" READONLY HIDDEN>
              
              <div class="input-group">
                <input type="text" class="form-control" style="width:57%" id="tarjetaNum" maxlength ="16" name="tarjeta" placeholder="XXXX-XXXX-XXXX-XXXX" onkeypress="ValidaSoloNumeros()">
                <input type="text" class="form-control" style="width:43%" width="28" id="tipoTarjeta" readonly>
              </div>
              <input type="text" class="form-control w-100" id="formGroupExampleInput" placeholder="Nombre en tarjeta..." name="nombre_tarjeta">
              
              <div class="input-group">
              <input type="text" class="form-control w-40" id="formGroupExampleInput" placeholder="Expira Mes..." name="expira_mes" maxlength="2" onkeypress="ValidaSoloNumeros()">
              <input type="text" class="form-control w-40" id="formGroupExampleInput" placeholder="Expira Año..." name="expira_annio" maxlength="2" onkeypress="ValidaSoloNumeros()">
              <input type="password" class="form-control w-20" id="formGroupExampleInput" placeholder="NIP..." maxlength="3" name="ccc" onkeypress="ValidaSoloNumeros()">
              </div>
            </div>
          </div>
          <button type="submit" class="btn btn-primary w-100"><i class="bi bi-cart-plus"></i> Realizar pago</button>  
          </form>
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

<!-- 4915663435988911 -->
<!-- 5579100275123121 -->

<!-- ejemplos de cards -->
<!-- https://bbbootstrap.com/snippets/bootstrap-5-simple-information-card-85881560 -->
<!-- https://bbbootstrap.com/ -->