function goTopEx(){
        var obj=document.getElementById("goTopBtn");
          /*拖动滚动条时 发生  display="" 归于现状(显示)  display="none" 隐藏 */    
        window.onscroll=function(){getScrollTop()>0?obj.style.display="":obj.style.display="none";}
            /* 单击并放开后才发生  */
        obj.onclick=function(){
        	/*每隔10毫秒发生scrollMove方法*/
            var goTop=setInterval(scrollMove,10);
            function scrollMove(){
            	/*设置滚动条的高度为getScrollTop()/1.1*/
                    setScrollTop(getScrollTop()/1.1);
                      /*如果得到的滚动条的高度<1,则清除掉scrollMove方法*/
                    if(getScrollTop()<1)clearInterval(goTop);
                    /*clearInterval() 方法可取消由 setInterval()的方法 |  clearInterval() 方法的参数必须是由 setInterval() 返回的 ID 值 */
                }
        }
        function getScrollTop(){
        	/* 获取当前页面的滚动条纵坐标位置   */ 	
        	var scrollTop = document.body.scrollTop || document.documentElement.scrollTop || 0;
        	/*返回滚动条的高度 */           
        	 return scrollTop;
            }
        function setScrollTop(value){
        		/* 修改当前页面的滚动条的高度为 value*/
                document.documentElement.scrollTop=value;
            }    
}