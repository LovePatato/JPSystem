//跳转到Page页
	function goPage(page) {
		document.frm1.curPage.value = page;
		document.frm1.submit();
	}

	//上一页
	function prePage() {
		document.frm1.curPage.value = parseInt(document.frm1.curPage.value) - 1;
		document.frm1.submit();
	}

	//下一页
	function nextPage() {
		document.frm1.curPage.value = parseInt(document.frm1.curPage.value) + 1;
		document.frm1.submit();
	}

	//把当前页重置提交
	function query() {

		document.frm1.curPage.value = 1;
		document.frm1.submit();
	}