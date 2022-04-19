var contador = 0;

function agregarCarrito(x1,nombre,costo){
    
    // var inputs = document.getElementById('contadorInputs').value;
    // var precioTotal = document.getElementById('total_precio').value;
    

    contador++;
    
    let x = x1;
    let y = nombre; 
    let precio = costo;
    // alert("Valor recibido: " + y);
    // alert("Valor recibido: " + contador);
    // var y1 = y;
    // console.log('x1');

    // modificación en contador name="nombreproducto'+contador+' por name="nombreproducto[]"
    document.getElementById('compracarrito').innerHTML+='<div id="limpiarcompra'+contador+'" class="input-group mb-1"><input name="nombreproducto[]" type="text" class="form-control w-50" placeholder="" aria-label="Username" aria-describedby="basic-addon1" value="'+y+'" READONLY><input name="valor[]" id="producto" type="text" class="form-control text-center" placeholder="" aria-label="Username" aria-describedby="basic-addon1" value="$'+precio+'" READONLY><input name="id[]" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1" value="'+x+'" id="contadorId" hidden><button type="button" class="btn btn-danger input-group-text" onclick="borrarCompras('+contador+')"><i class="bi bi-x-circle-fill"></i></button></div>';

    var divs = document.querySelectorAll('input[id="producto"]');
    var valor = divs.length;
    // alert(valor);
    document.getElementById('contadorInputs').textContent = valor;
    document.getElementById('notificacionBadge').textContent = valor;

    document.getElementById('totalprice').value = valor;
    
    // costo total de la compra
    // https://es.stackoverflow.com/questions/254096/c%C3%B3mo-sumar-los-precios-en-etiquetas-span

    // obtenemos todos los spans
        // let spans = document.querySelectorAll('input[id="producto"]');
        // let total = 0;

        // document.getElementById('calcular').addEventListener('click', function () {
        // iteramos sobre cada elemento
        // spans.forEach(function(element) {
        // let value = element.innerHTML;  
        // eliminamos todo lo que no sea numero
        // value = parseFloat(value.replace(/(?!-)[^0-9.]/g,''))
        // total += value
        // })
// alert(total);
        // document.getElementById('totalSpans').innerHTML = `$${total}USD`
        // });
        // ;
    // costo total de la compra





// CODIGO JALANDO total de la compra

var costoTotal = 0;
var costoProducto = document.querySelectorAll('input[id="producto"]');
for (var i = 0; i < costoProducto.length; i++) {
    var subTotal = costoProducto[i].value;
    subTotal = parseFloat(subTotal.replace(/(?!-)[^0-9.]/g,''));
    costoTotal += subTotal;
}
// costoTotal = parseFloat(costoTotal.replace(/(?!-)[^0-9.]/g,''));
document.getElementById('totalSpans').innerHTML = `$${costoTotal} Mx.N.`
// hidden value
document.getElementById('inputsval').value = costoTotal;


// alert(costoTotal);

// costo total de la compra

   
}

function borrarCompras(contador){
    let cont = contador;
    document.getElementById("limpiarcompra"+cont).innerHTML = "";

    var divs = document.querySelectorAll('input[id="producto"]');
    var valor = divs.length;
    // alert(valor);
    document.getElementById('contadorInputs').textContent = valor;  
    document.getElementById('notificacionBadge').textContent = valor;
    // hidden value
    document.getElementById('totalprice').value = valor;


    // CODIGO JALANDO total de la compra

    var costoTotal = 0;
    var costoProducto = document.querySelectorAll('input[id="producto"]');
    for (var i = 0; i < costoProducto.length; i++) {
        var subTotal = costoProducto[i].value;
        subTotal = parseFloat(subTotal.replace(/(?!-)[^0-9.]/g,''));
        costoTotal += subTotal;
    }
    // costoTotal = parseFloat(costoTotal.replace(/(?!-)[^0-9.]/g,''));
    document.getElementById('totalSpans').innerHTML = `$${costoTotal} Mx.N.`
    // hidden value
    document.getElementById('inputsval').value = costoTotal;


    // alert(costoTotal);

// costo total de la compra
}

// var inputs = document.querySelectorAll('input[id="producto"]');

// document.getElementById('contadorInputs').value = inputs;

// accesosadmin.html
// línea 473 | código para hacer un for de los inputs

// document.querySelectorAll('input').forEach(element => element.disabled = true);