
var x;
x=$(document);
x.ready(inicializarEventos);

function inicializarEventos(){
  var x;
  x=$("#tabla1 tr");
  x.click(cambiarColor);
}

function cambiarColor(){
   var x;
   x=$(this);
   if(x.css("background-color") == "rgb(255, 255, 0)"){
     x.css("background-color","ffffff");
   } else {
     x.css("background-color","ffff00");
     console.log(x.css("background-color"));
   }

 }
