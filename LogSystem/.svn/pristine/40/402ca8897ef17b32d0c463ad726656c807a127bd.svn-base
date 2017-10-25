var xmlHttpReq;
var xmlHttpReq1;
var s;
var e;

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

function getStation(){
	createXMLHttpRequest();
	xmlHttpReq.onreadystatechange = call;
	xmlHttpReq.open("get","stationAction!getStationList", true);
	xmlHttpReq.send(null);
	
}
function call() {
	if(xmlHttpReq.readyState==4 && xmlHttpReq.status==200){
		var text=xmlHttpReq.responseText;
		var getS=text.split(" ");
		var slist=document.getElementById("addstartStation");
		var elist=document.getElementById("addendStation");
		slist.options.length=0;
		
		delete getS[getS.length-1];
		for(var temp in getS){
			var tempS=getS[temp].split("%");			
			slist.options.add(new Option(tempS[0],tempS[1]));
		}
		elist.options.length=0;
		for(var temp0 in getS){
			var tempS0=getS[temp0].split("%");
			elist.options.add(new Option(tempS0[0],tempS0[1]));
		}
		
	}
}
function setWayName(){
	document.getElementById("addname").value=$('#addstartStation  option:selected').text()+"-"+$('#addendStation  option:selected').text();
}

function getStation1(){
	createXMLHttpRequest1();
	xmlHttpReq1.onreadystatechange = call1;
	xmlHttpReq1.open("post","stationAction!getStationList", true);
	xmlHttpReq1.send(null);
}
function call1(s,e) {
	if(xmlHttpReq1.readyState==4 && xmlHttpReq1.status==200){
		var text=xmlHttpReq1.responseText;
		var getS=text.split(" ");
		var slist=document.getElementById("updatestartStation");
		var elist=document.getElementById("updateendStation");
		slist.options.length=0;
		delete getS[getS.length-1];
		for(var temp in getS){
			var tempS=getS[temp].split("%");
			if(tempS[1]==s){
			slist.options.add(new Option(tempS[0],tempS[1],false,true));}
			else
			slist.options.add(new Option(tempS[0],tempS[1],false,false));
		}
		elist.options.length=0;
		for(var temp0 in getS){
			var tempS0=getS[temp0].split("%");
			if(tempS0[1]==e){alert(s+"  "+e);
				elist.options.add(new Option(tempS0[0],tempS0[1],false,true));}
				else
				elist.options.add(new Option(tempS0[0],tempS0[1],false,false));
		}
	}
	
}
function setWayName1(){
	document.getElementById("updatename").value=$('#updatestartStation  option:selected').text()+"-"+$('#updateendStation  option:selected').text();
}

function setUpdate(id,ss,es,name){
	s=ss;e=es;
	getStation1();
	
	document.getElementById("updateid").value=id;
	//document.getElementById("updateSS").value=ss;
	
/*	$("#updatestartStation  option").each(function() {
        if ($(this).val()== ss) {
            $(this).attr("selected", "true");
            return false;
            }
    });
	//document.getElementById("updateES").value=es;
	$("#updateendStation  option").each(function() {
        	if ($(this).val()== es) {
        		alert($(this).val());
            $(this).attr("selected", "selected");
            return false;
            }
    });
*/
	document.getElementById("updatename").value=name;
	$("#modal-container-006").modal('show');
}
function setAction(){
	var id=document.getElementById("updateid").value;
	var form=document.getElementById("updateWay");
	form.action="wayAction!update";
	form.submit();
	
}


