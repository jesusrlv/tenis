function inputFiltro(){
    var valor = document.getElementById("filter").value;

    if(valor == 1){
        document.getElementById("marca").setAttribute("name","filtro");
        document.getElementById("marca").required = true;
        document.getElementById("marcaH").hidden = false;
        

        document.getElementById("modeloH").hidden = true;
        document.getElementById("colorH").hidden = true;
        document.getElementById("materialH").hidden = true;

        document.getElementById("modelo").removeAttribute("name");
        document.getElementById("color").removeAttribute("name");
        document.getElementById("material").removeAttribute("name");

        document.getElementById("modelo").required = false;
        document.getElementById("color").required = false;
        document.getElementById("material").required = false;

    }

    else if(valor == 2){
        document.getElementById("modelo").setAttribute("name","filtro");
        document.getElementById("modelo").required = true;
        
        document.getElementById("modeloH").hidden = false;
        document.getElementById("marcaH").hidden = true;
        document.getElementById("colorH").hidden = true;
        document.getElementById("materialH").hidden = true;

        document.getElementById("marca").removeAttribute("name");
        document.getElementById("color").removeAttribute("name");
        document.getElementById("material").removeAttribute("name");

        document.getElementById("marca").required = false;
        document.getElementById("color").required = false;
        document.getElementById("material").required = false;

    }

    else if(valor == 3){
        document.getElementById("color").setAttribute("name","filtro");
        document.getElementById("color").required = true;
        document.getElementById("colorH").hidden = false;

        document.getElementById("marcaH").hidden = true;
        document.getElementById("modeloH").hidden = true;
        document.getElementById("materialH").hidden = true;

        document.getElementById("marca").removeAttribute("name");
        document.getElementById("modelo").removeAttribute("name");
        document.getElementById("material").removeAttribute("name");

        document.getElementById("modelo").required = false;
        document.getElementById("modelo").required = false;
        document.getElementById("material").required = false;

    }

    else if(valor == 4){
        document.getElementById("material").setAttribute("name","filtro");
        document.getElementById("material").required = true;
        document.getElementById("materialH").hidden = false;

        document.getElementById("marcaH").hidden = true;
        document.getElementById("modeloH").hidden = true;
        document.getElementById("colorH").hidden = true;

        document.getElementById("marca").removeAttribute("name");
        document.getElementById("modelo").removeAttribute("name");
        document.getElementById("color").removeAttribute("name");

        document.getElementById("modelo").required = false;
        document.getElementById("color").required = false;
        document.getElementById("color").required = false;

    }

}