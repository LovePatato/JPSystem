/**
 * Created by hongming on 2017/4/20.
 */
$(document).ready(function(){
    $("div#qr_wx_id").hover(function(){
        $("div#qr_wx_over_show_id")[0].style.display="";
    }, function(){
        $("div#qr_wx_over_show_id")[0].style.display="none";
    });

    $("div#qr_qq_id").hover(function(){
        $("div#qr_qq_over_show_id")[0].style.display="";
    }, function(){
        $("div#qr_qq_over_show_id")[0].style.display="none";
    });

    $('#cal_all_money').click(function(){
        var val=$('input:radio[name="sel"]:checked').val();
        if(val==null){
            alert("什么也没选中!");
            return false;
        }
        else{
        	
           if(val=='select1')
           {
               $('#item1').css("background-image", "url(JSP/TransFee/images/item1_1.png)");
               $('#item2').css("background-image", "url(JSP/TransFee/images/item2.png)");
               $('#item3').css("background-image", "url(JSP/TransFee/images/item3.png)");
               $('#item4').css("background-image", "url(JSP/TransFee/images/item4.png)");
               $('#item5').css("background-image", "url(JSP/TransFee/images/item5.png)");
               var b1 = $('#price1').val();
               var b2 = 131;
               var b3 = $('#price2').val();
               var b4 = 0;
               var b5 = 0;
               var b6 = parseInt(b1)+parseInt(b2)+parseInt(b3)+parseInt(b4)+parseInt(b5)
               $('#blank1').html(b1);
               $('#blank2').html(b2);
               $('#blank3').html(b3);
               $('#blank4').html(b4);
               $('#blank5').html(b5);

               $('#fee').html(b6+"元");
           }
            if(val=='select2')
            {
                $('#item1').css("background-image", "url(JSP/TransFee/images/item1.png)");
                $('#item2').css("background-image", "url(JSP/TransFee/images/item2_1.png)");
                $('#item3').css("background-image", "url(JSP/TransFee/images/item3.png)");
                $('#item4').css("background-image", "url(JSP/TransFee/images/item4.png)");
                $('#item5').css("background-image", "url(JSP/TransFee/images/item5.png)");
                var b1 = $('#price1').val();
                var b2 = 159;
                var b3 = $('#price2').val();
                var b4 = 0;
                var b5 = 0;
                var b6 = parseInt(b1)+parseInt(b2)+parseInt(b3)+parseInt(b4)+parseInt(b5)
                $('#blank1').html(b1);
                $('#blank2').html(b2);
                $('#blank3').html(b3);
                $('#blank4').html(b4);
                $('#blank5').html(b5);

                $('#fee').html(b6+"元");
            }

            if(val=='select3')
            {
                $('#item1').css("background-image", "url(JSP/TransFee/images/item1.png)");
                $('#item2').css("background-image", "url(JSP/TransFee/images/item2.png)");
                $('#item3').css("background-image", "url(JSP/TransFee/images/item3_1.png)");
                $('#item4').css("background-image", "url(JSP/TransFee/images/item4.png)");
                $('#item5').css("background-image", "url(JSP/TransFee/images/item5.png)");
                var b1 = $('#price1').val();
                var b2 = 278;
                var b3 = $('#price2').val();
                var b4 = 0;
                var b5 = 0;
                var b6 = parseInt(b1)+parseInt(b2)+parseInt(b3)+parseInt(b4)+parseInt(b5)
                $('#blank1').html(b1);
                $('#blank2').html(b2);
                $('#blank3').html(b3);
                $('#blank4').html(b4);
                $('#blank5').html(b5);

                $('#fee').html(b6+"元");
            }

            if(val=='select4')
            {
                $('#item1').css("background-image", "url(JSP/TransFee/images/item1.png)");
                $('#item2').css("background-image", "url(JSP/TransFee/images/item2.png)");
                $('#item3').css("background-image", "url(JSP/TransFee/images/item3.png)");
                $('#item4').css("background-image", "url(JSP/TransFee/images/item4_1.png)");
                $('#item5').css("background-image", "url(JSP/TransFee/images/item5.png)");
                var b1 = $('#price1').val();
                var b2 = 129;
                var b3 = $('#price2').val();
                var b4 = 0;
                var b5 = 0;
                var b6 = parseInt(b1)+parseInt(b2)+parseInt(b3)+parseInt(b4)+parseInt(b5)
                $('#blank1').html(b1);
                $('#blank2').html(b2);
                $('#blank3').html(b3);
                $('#blank4').html(b4);
                $('#blank5').html(b5);

                $('#fee').html(b6+"元");
            }

            if(val=='select5')
            {
                $('#item1').css("background-image", "url(JSP/TransFee/images/item1.png)");
                $('#item2').css("background-image", "url(JSP/TransFee/images/item2.png)");
                $('#item3').css("background-image", "url(JSP/TransFee/images/item3.png)");
                $('#item4').css("background-image", "url(JSP/TransFee/images/item4.png)");
                $('#item5').css("background-image", "url(JSP/TransFee/images/item5_1.png)");
                var b1 = $('#price1').val();
                var b2 = 105;
                var b3 = $('#price2').val();
                var b4 = 0;
                var b5 = 0;
                var b6 = parseInt(b1)+parseInt(b2)+parseInt(b3)+parseInt(b4)+parseInt(b5)
                $('#blank1').html(b1);
                $('#blank2').html(b2);
                $('#blank3').html(b3);
                $('#blank4').html(b4);
                $('#blank5').html(b5);

                $('#fee').html(b6+"元");
            }


        }


    });
});

function changeBck()
{
}
/*计算总体积，总重量*/
function cal()
{
    console.log("cal()");
    var perWeight = $('#perWeight').val();
    var length = $('#length').val();
    var width = $('#width').val();
    var height = $('#height').val();
    var count = $('#count').val();
    console.log("perWeight:"+perWeight+",length:"+length+",width:"+width+",height:"+height);
    if(perWeight==""||length==""||width=="" || height==""||count=="")
    {
        console.log("有空");
        console.log($('#mes').val());
        $('#mes').html("*请填写正确的数据*");
    }

    //用正则判断数据格式是否正确
    var reg = /^\d*[0-9]$/;
    if(!(reg.test(perWeight)&&reg.test(length)&&reg.test(width)&&reg.test(height)))
    {
        alert("请输入数字！")
        return;
    }
    $('#weight').html(perWeight*count);
    $('#cubic').html(length*width*height);
    $('#item').html(count);
}

/*计算总价*/
function all_money()
{
    console.log("all_money()");
    var s_weight = $('#s_weight').val();
    var s_cubic = $('#s_cubic').val();
    var price1 = $('#price1').val();
    var price2 = $('#price2').val();
    var ad = "增值费为：";

    if(s_weight==""||s_cubic=="")
    {
        alert("总重量或总体积不能为空");
    }
    
    if(price1==""&&price2!="")
    {
        var SumMoney = price2;
        $('#SumMoney').html(ad+SumMoney+"元");
    }
    if(price2==""&&price1!="")
    {
        var SumMoney = price1;
        $('#SumMoney').html(ad+SumMoney+"元");
    }
    if(price2==""&&price1=="")
    {
        $('#SumMoney').html(ad+0+"元");
    }
    else
    {
        var SumMoney = parseInt(price1) + parseInt(price2) ;
        $('#SumMoney').html(ad+SumMoney+"元");
    }
    
    var target4 =document.getElementById('four');
    target4.style.display="block";
}
/**
 * 控制div的显示
 * @param targetid
 * @param objN
 */
function showdiv2(){
	
	var city3 = $('#city-picker3').val();
	var city3_1 = $('#city-picker3_1').val();
	console.log("city3:"+city3+",city3_1:"+city3_1);
	var substr1 = "郑州";
	var substr2 = "北京";
	var substr3 = "西安";
	var substr4 = "南京";
	var substr5 = "桂林";
	var substr6 = "昆明";
	var substr7 = "上海";
	
	var target2 =document.getElementById('second');
	
	//出发地与目的地不能为空
	if((city3=="")||(city3_1==""))
	{
		alert("出发地与目的地不能为空！");
		target2.style.display="none";
		$('#line').html("");
	}
   
	//郑州-南京
	if((city3.indexOf(substr1)>=0))
	{
		if((city3_1.indexOf(substr4) < 0))
		{
			$('#line').html("抱歉,此线路还没有开通");
			console.log("抱歉,此线路还没有开通");
			target2.style.display="none";
		}else
		{
			$('#line').html("");
			 target2.style.display="block";
		}
	   
	}
	//北京-西安  北京-昆明
	else if((city3.indexOf(substr2)>=0))
	{
		//console.log("始发地为"+substr1+"市或"+substr2+"市");
		if(((city3_1.indexOf(substr3) < 0)&&(city3_1.indexOf(substr6) < 0)))
		{
			$('#line').html("抱歉,此线路还没有开通");
			console.log("抱歉,此线路还没有开通");
			target2.style.display="none";
		}
		else
		{
			$('#line').html("");
			 target2.style.display="block";
		}
	}
	
	//西安-昆明
	else if((city3.indexOf(substr3)>=0))
	{
		//console.log("始发地为"+substr1+"市或"+substr2+"市");
		if(!((city3_1.indexOf(substr6) < 0)))
		{
			$('#line').html("抱歉,此线路还没有开通");
			console.log("抱歉,此线路还没有开通");
			target2.style.display="none";
		}
		else
		{
			$('#line').html("");
			 target2.style.display="block";
		}
	}
	
	//昆明-上海
	else if((city3.indexOf(substr6)>=0))
	{
		//console.log("始发地为"+substr1+"市或"+substr2+"市");
		if(!((city3_1.indexOf(substr7) < 0)))
		{
			$('#line').html("抱歉,此线路还没有开通");
			console.log("抱歉,此线路还没有开通");
			target2.style.display="none";
		}
		else
		{
			$('#line').html("");
			 target2.style.display="block";
		}
	}
	//桂林-西安
	else if((city3.indexOf(substr5)>=0))
	{
		//console.log("始发地为"+substr1+"市或"+substr2+"市");
		if(!((city3_1.indexOf(substr3) < 0)))
		{
			$('#line').html("抱歉,此线路还没有开通");
			console.log("抱歉,此线路还没有开通");
			target2.style.display="none";
		}
		else
		{
			$('#line').html("");
			 target2.style.display="block";
		}
	} 
	else
	{
		if((city3!="")&&(city3_1!=""))
		{
			$('#line').html("抱歉,此线路还没有开通");
			target2.style.display="none";
		}
	}
 
}


