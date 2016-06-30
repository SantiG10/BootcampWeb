var x;
x=$(document);

x.ready(inicializarEventos);

function inicializarEventos(){
	var x;
	x=$("#recuadro");
	x.mousemove(moverMouse);

	x=$("#recuadro");
	x.mouseout(saleMouse);
}

function moverMouse(event){
	var x;
	x=$("#coordenada");
	x.text("(" + event.clientX + "," + event.clientY + ")");
}

function saleMouse(){
	var x;
	x=$("#coordenada");
	x.text("Flecha fuera del recuadro");
}
