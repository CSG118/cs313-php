function loadPage()
{ 
	document.getElementById("tColor").focus();
}

function clicked()
{
	alert('Clicked!');
}

function changeColor()
{
	var tColor = document.getElementById("tColor").value;
	document.getElementById("side").color = tcolor;
}