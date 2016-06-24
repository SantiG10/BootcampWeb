function validar() {
  var Nombre = document.formulario.txt_Nombre.value;
  var Apellidos = document.getElementById("Apellidos").value;
  var Tipo_Id = document.getElementById('Tipo_Id').value;
  alert("Nombre: " + Nombre + "\nApellidos: " + Apellidos + "\nTipo Documento: " + Tipo_Id);
  if (Nombre=="") {
    alert("Faltan Datos");
  }
}
