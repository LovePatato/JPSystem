var xmlHttpReq;
var xmlHttpReq1;

function createXMLHttpRequest() {
	if(window.ActiveXObject){
		xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
	}
	else if(window.XMLHttpRequest){
		xmlHttpReq = new XMLHttpRequest();
	}
}

function createXMLHttpRequest1() {
	if(window.ActiveXObject){
		xmlHttpReq1 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	else if(window.XMLHttpRequest){
		xmlHttpReq1 = new XMLHttpRequest();
	}
}

function getStation(wayid){
	createXMLHttpRequest();
	xmlHttpReq.onreadystatechange = call;
	xmlHttpReq.open("get","stationAction!getWDStation?id="+wayid, true);
	xmlHttpReq.send(null);
}
function call() {
	if(xmlHttpReq.readyState==4 && xmlHttpReq.status==200){
		var text=xmlHttpReq.responseText;
		var getS=text.split(" ");
		var list=document.getElementById("addStation");
		list.options.length=0;
		
		delete getS[getS.length-1];
		for(var temp in getS){
			var tempS=getS[temp].split("%");			
			list.options.add(new Option(tempS[0],tempS[1]));
		}
		
	}
}

function upAction(id){
	var form=document.getElementById("upWD"+id);
	
	form.action="way_detailAction!upWD";
	form.submit();
}
function downAction(id){
	var form=document.getElementById("upWD"+id);
	
	form.action="way_detailAction!downWD";
	form.submit();
}

