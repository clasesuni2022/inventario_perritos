<?php
$sw=0;
$cicli=$_GET['ci'];$ci=$cicli;
include 'conectar/link.php';
$conn=mysqli_query($conn,"SELECT * FROM cliente WHERE cicli='$cicli'")
or die ("Error a extraer datos");
 while ($sacar=mysqli_fetch_array($conn))
{
	$sw++;
	$cliente= $sacar['cli'];

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Tienda Mascota</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
#btn{width:100%;}#btn1{width:100%;}#btn3{width:100%;}#btn1{width:100%;}#btn4{width:100%;}
#c1{ cursor:pointer;}#c2{ cursor:pointer;}#c3{ cursor:pointer;}#c4{ cursor:pointer;}#c5{ cursor:pointer;}
#c6{ cursor:pointer;}#c7{ cursor:pointer;}#c8{ cursor:pointer;}#c9{ cursor:pointer;}
</style>
<body>

<div class="container">
  <h2 align="center" style="color:#090" onClick="comprar()">Tiendas Guao Feliz
    <input name="tipoprod" type="text" id="tipoprod" size="5" maxlength="5" hidden="true">
    <span class="container mt-3">
    <input name="cicli2"  hidden="true"  type="text" id="cicli2" value="<?=$ci?>" size="6" />
  </span></h2>
 <center> <table width="200" border="0" id="table1">
  <tr>
    <td><div align="center" style="color:#960">Introduzca Usuario y Clave</div></td>
    </tr>
  <tr>
    <td><div align="center">
      <input type="text" name="usu" id="usu" placeholder="Usuario">
    </div></td>
    </tr>
  <tr>
    <td><div align="center">
      <input type="password" name="cla" id="cla"  placeholder="Clave">
    </div></td>
    </tr>
  <tr>
    <td><div align="center">
      <select name="select" id="select">
        <option>Productos</option>
        <option>Correa</option>
        <option>Shampoo</option>
        <option>Pechera</option>
        <option>Plato</option>
        <option>Bozal</option>
        <option>Cama</option>
        <option>Alimento</option>
        <option>Cepillo</option>
        <option>Guacal</option>
      </select>
    </div></td>
  </tr>
  <tr>
    <td><button type="button" id="btn" onClick="bus()" class="btn btn-success btn ">Buscar</button></td>
  </tr>
  <tr>
    <td> <button type="button" id="btn1" onClick="ocu()" class="btn btn-danger btn ">Oculta</button> </td>  
  
  </tr>
 </table>
 </center>
<center><p  style="color:#960"><h4><?php echo "Cliente:  $cliente" ?></h4></p></center>
  <p align="center"><img src="img/logo.jpg" width="123" height="76"></p>
 <center> <table width="168" border="0" id="tabla3">
  <tr>
    <td align="center" style="color:#960"><h4>Introduzca</h4></td>
  </tr>
  <tr>
    <td><input type="text" name="cicli" id="cicli" placeholder="Documento Identidad"></td>
  </tr>
  <tr>
    <td><input type="text" name="usucli" id="usucli" placeholder="Usuario"></td>
  </tr>
  <tr>
    <td><input type="text" name="clacli" id="clacli" placeholder="Clave"></td>
  </tr>
  <tr>
    <td><button type="button" id="btn4" onClick="bucliente()" class="btn btn-success btn-sm">Buscar</button></td>
  </tr>
 </table>
 </center>

  <p align="center" style="color:#960" onClick="aa()" id="ins" hidden="true">Inscripci??n Cliente</p>
  <p id="malo" style="color:#F00" align="center"></p>
  
  
 <center> <table width="153" border="0" id="table2">
  <tr>
    <td><input type="text" name="ci" id="ci" placeholder="Documento Identidad"></td>
  </tr>
  <tr>
    <td><input type="text" name="cli" onClick="busci()" id="cli" placeholder="Nombres y Apellidos"></td>
  </tr>
  <tr>
    <td><input type="text" name="cel" id="cel" placeholder="Introduzca Num cel"></td>
  </tr>
  <tr>
    <td><input type="email" name="correo" id="correo" placeholder="Introduzca correo"></td>
  </tr>
  <tr>
    <td><input type="text" name="usus" id="usus" placeholder="Introduzca usuario"></td>
  </tr>
  <tr>
    <td><input type="text" name="clas" id="clas" placeholder="Introduzca clave"></td>
  </tr>
  <tr>
    <td><input type="text" name="clas2" id="clas2" placeholder="Repita clave"></td>
  </tr>
  <tr>
    <td><button type="button" id="btn3" onClick="guacli()" class="btn btn-success">Guardar</button></td>
  </tr>
  </table></center>

 <center> <table width="200" border="1">
    <tr>
      <td colspan="3"><div align="center" style="color:#090"><h3>Seleccione Producto</h3></div></td>
      </tr>
    <tr>
      <td width="125" id="c1"><div align="center"><img src="img/correa.jpg" onClick="corre2()"  width="91" height="89" title="Click en imagen y ver?? Correa"></div></td>
      <td width="46" id="c2"><div align="center"><img src="img/champu.jpg"  onClick="sh2()" id="uno" width="84" height="106"></div></td>
      <td width="7" id="c3"><div align="center"><img src="img/pechero.jpg" width="100" height="111"></div></td>
    </tr>
    <tr>
      <td id="c4"><img src="img/plato.jpg" width="110" height="66"></td>
      <td><img src="img/bozal.jpg" width="91" height="106"></td>
      <td><img src="img/cama.jpg" width="115" height="100"></td>
    </tr>
    <tr>
      <td><img src="img/comida.jpg" width="98" height="86"></td>
      <td><img src="img/cepillo.jpg" width="99" height="115"></td>
      <td><img src="img/guacal.jpg" width="108" height="119"></td>
    </tr>
  </table></center>
  <form action="/action_page.php">
    <div class="form-group"></div>
  </form>
</div>

</body>
</html>
<script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
	document.getElementById('table1').style.display='none';
	document.getElementById('table2').style.display='none';
 document.getElementById('tabla3').style.display="none";
	document.getElementById('malo').innerHTML="";
	function comprar(){
		document.getElementById('table1').style.display='inline';
		document.getElementById('usu').value="";
		document.getElementById('cla').value="";
		document.getElementById('usu').focus();
	}
	function bus(){
		var usu=document.getElementById('usu').value;
		var cla=document.getElementById('cla').value;
		var prod=document.getElementById('select').value;
		$.ajax({

type: "POST",
url: "back/buscar.php",
data: { usu:usu, cla:cla,prod:prod }
}).done(function( msg ) {
	v=msg;
	 var cadena = v,
    separador = ",", // un espacio en blanco
    limite    = 4,
    a = cadena.split(separador, limite);
alert ("valor1="+a[0]+"valor2="+a[1]+"valor2="+a[2]+"valor2="+a[3]);
if (a[0]>0){
	document.getElementById('table1').style.display='none';
window.location="back/meteproducto.php?prod="+a[3];	
}
document.getElementById('malo').innerHTML="No esta autorizado para ingresar a esa ??rea";
document.getElementById('table1').style.display='none';
});
	}
	function ocu(){
		document.getElementById('table1').style.display="none";
	}
	function aa(){
		
		document.getElementById('table2').style.display='inline'
		document.getElementById('ci').focus();
	}
	function guacli(){
		var ci=document.getElementById('ci').value;
		var cli=document.getElementById('cli').value;
		var cel=document.getElementById('cel').value;
		var correo=document.getElementById('correo').value;
		var usu=document.getElementById('usus').value;
		var cla=document.getElementById('clas').value;
		var cla2=document.getElementById('clas2').value;
		if(cla!=cla2){
			document.getElementById('malo').innerHTML="Claves no coinciden, intente de nuevo";
			document.getElementById('clas').focus();
			return;
		}
		$.ajax({

type: "POST",
url: "back/guardacli.php",
data: { ci: ci,cli: cli,cel:cel,correo:correo,usu:usu,cla:cla }
}).done(function( msg ) {
	v=msg;
	 var cadena = v,
    separador = ",", // un espacio en blanco
    limite    = 2,
    a = cadena.split(separador, limite);
alert ("valor1="+a[0]+"valor2="+a[1]);
});
	}
	function busci(){
		ci=document.getElementById('ci').value;
		$.ajax({

type: "POST",
url: "back/busci.php",
data: { ci:  ci }
}).done(function( msg ) {
	v=msg;
	 var cadena = v,
    separador = ",", // un espacio en blanco
    limite    = 2,
    a = cadena.split(separador, limite);
alert ("valor1="+a[0]+"valor2="+a[1]);
if(a[0]>0){
	document.getElementById('malo').innerHTML="Documento identidad "+a[1]+" ya esta en la base de datos";
	document.getElementById('ci').focus();
	return;
}
});
		
	}
	function corre(){
			document.getElementById('ins').style.display="none";
		document.getElementById('tipoprod').value="Correa";
		document.getElementById('tabla3').style.display="inline";
		document.getElementById('cicli').focus()
		
	}
	function corre2(){
		var tipo='Correa';
		var ci=document.getElementById('cicli2').value;
		
		window.location="back/producto2.php?ci="+ci+"&tipo="+tipo;;
	}
	function sh2(){
		var tipo='Shampoo';
		var ci=document.getElementById('cicli2').value;
		
		window.location="back/producto2.php?ci="+ci+"&tipo="+tipo;;
	}
	function bucliente(){
		var tipo=document.getElementById('tipoprod').value
		var ci=document.getElementById('cicli').value
		var usu=document.getElementById('usucli').value
		var cla=document.getElementById('clacli').value
		alert (cla)
		$.ajax({

type: "POST",
url: "back/compraproducto.php",
data: { tipo:tipo, ci: ci,usu:usu,cla:cla }
}).done(function( msg ) {
	v=msg;
	 var cadena = v,
    separador = ",", // un espacio en blanco
    limite    = 4,
    a = cadena.split(separador, limite);
alert ("valor1="+a[0]+"valor2="+a[1]+"valor2="+a[2]+"valor2="+a[3]);
if(a[0]==0){
	document.getElementById('malo').innerHTML="Verifique usuario, clave y document identidad";
	document.getElementById('cicli').focus();
	return
}
window.location="back/producto.php?ci="+ci+"&tipo="+tipo;;
});
		
		
		
		
	}
	</script>

