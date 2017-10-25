function setUpdateVehicle(id,vl,vo,vc){
	//alert(ss+" "+es);innerHTML
	document.getElementById("vehicle-id").innerHTML=id;
	document.getElementById("vehicle_id").value=id;
	document.getElementById("vehicle_license").value=vl;
	document.getElementById("vehicle_load").value=vo;
	document.getElementById("vehicle_capacity").value=vc;
}
function setUpdateGoods(id,n,p){
	//alert(ss+" "+es);innerHTML
	document.getElementById("goods-id").innerHTML=id;
	document.getElementById("goods_id").value=id;
	document.getElementById("goods_name").value=n;
	document.getElementById("goods_remark").value=p;
	
}

