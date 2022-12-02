var contador = 0;

function agregarCarrito(x1,nombre,costo,valorTalla){

    contador++;
    
    let x = x1;
    let y = nombre; 
    let precio = costo;
    
    document.getElementById('compracarrito').innerHTML+='<div id="limpiarcompra'+contador+'" class="input-group input-group-sm mb-1"><input name="nombreproducto[]" type="text" class="h6 form-control w-50" placeholder="" aria-label="Username" aria-describedby="basic-addon1" value="'+y+'" READONLY><input name="valor[]" id="producto" type="text" class="h6 form-control text-center" placeholder="" aria-label="Username" aria-describedby="basic-addon1" value="$'+precio+'" READONLY><input name="talla[]" id="talla" type="text" class="h6 form-control text-center" placeholder="" aria-label="Username" aria-describedby="basic-addon1" value="'+valorTalla+'" READONLY><input name="id[]" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1" value="'+x+'" id="contadorId" hidden><button type="button" class="h6 btn btn-danger input-group-text" onclick="borrarCompras('+contador+')"><i class="bi bi-x-circle-fill"></i></button></div>';

    var divs = document.querySelectorAll('input[id="producto"]');
    var valor = divs.length;
    document.getElementById('contadorInputs').textContent = valor;
    document.getElementById('notificacionBadge').textContent = valor;

    document.getElementById('totalprice').value = valor;
    
var costoTotal = 0;
var costoProducto = document.querySelectorAll('input[id="producto"]');
for (var i = 0; i < costoProducto.length; i++) {
    var subTotal = costoProducto[i].value;
    subTotal = parseFloat(subTotal.replace(/(?!-)[^0-9.]/g,''));
    costoTotal += subTotal;
}
document.getElementById('totalSpans').innerHTML = `$${costoTotal} Mx.N.`
document.getElementById('inputsval').value = costoTotal;
   
}

function borrarCompras(contador){
    let cont = contador;
    document.getElementById("limpiarcompra"+cont).innerHTML = "";

    var divs = document.querySelectorAll('input[id="producto"]');
    var valor = divs.length;
    document.getElementById('contadorInputs').textContent = valor;  
    document.getElementById('notificacionBadge').textContent = valor;
    document.getElementById('totalprice').value = valor;

    var costoTotal = 0;
    var costoProducto = document.querySelectorAll('input[id="producto"]');
    for (var i = 0; i < costoProducto.length; i++) {
        var subTotal = costoProducto[i].value;
        subTotal = parseFloat(subTotal.replace(/(?!-)[^0-9.]/g,''));
        costoTotal += subTotal;
    }
    document.getElementById('totalSpans').innerHTML = `$${costoTotal} Mx.N.`
    document.getElementById('inputsval').value = costoTotal;


}