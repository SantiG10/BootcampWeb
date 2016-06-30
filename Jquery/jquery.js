var x;
x=$(document);
x.ready(inicializarEventos);

function inicializarEventos() {
	var x, y;
	x=$("#parrafo1");
	x.click(presionParrafo1);
	y=$("#parrafo2");
	y.click(presionParrafo2);
}

function presionParrafo1() {
	alert("Se presionó el párrafo 1");
}

function presionParrafo2() {
	alert("Se presionó el párrafo 2");
}
