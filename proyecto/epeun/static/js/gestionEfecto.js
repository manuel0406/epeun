function validarFormulario() {
  
  var codigo = document.getElementById("txtId").value;
  var tema = document.getElementById("txtTema").value;
  var descripcion = document.getElementById("txtDescripcion").value;

  if (codigo === "" || tema === "" || descripcion === "") {
    alert("Por favor, completa todos los campos");
    return false; // Evita que se envíe el formulario si hay campos vacíos
  }
  
  // Aquí puedes agregar el código adicional que deseas ejecutar si la validación es exitosa
  
  return true; // Permite enviar el formulario si no hay campos vacíos
}

function mostrarInput() {
  var input = document.getElementById("txtId");
  var label=document.getElementById("labelId");
  if (input.classList.contains("d-none") && label.classList.contains("d-none")) {
    input.classList.remove("d-none");
    label.classList.remove("d-none");
  } else {
    input.classList.add("d-none");
    label.classList.add("d-none");
  };
}