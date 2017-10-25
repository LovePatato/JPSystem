 function over(x,i){
	 for(var j=0;j<i;j++){

		 x.getElementsByClassName('edit-text')[j].style.display="block";
		 x.getElementsByClassName('view-text')[j].style.display="none";
	 }
 }
  function out(x,i){
		 for(var j=0;j<i;j++){

			 x.getElementsByClassName('edit-text')[j].style.display="none";
			 x.getElementsByClassName('view-text')[j].style.display="block";
		 }
 }