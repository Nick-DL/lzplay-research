javascript:(function() {
	var spans = 0;
	var span = document.getElementsByTagName('span');
	if (span) {
		for(var i = 0; i < span.length; i++) {
			if (span[i].hasAttribute('role') && span[i].getAttribute('role') == 'option' && span[i].hasAttribute('tabindex')) {
				spans++;
			}
		}
	} else {
		window.android.registerResult(1001);
	}

	var input = document.getElementsByTagName('input');
	if (input) {
		input[0].value='%s';
	} else {
		window.android.registerResult(2001);
		return;
	}
	
	var vec = document.getElementsByTagName('div');
	var isClick = false;
	if (vec) {
		for(var i =0; i < vec.length; i++) { 
			if (vec[i].hasAttribute('role') && vec[i].getAttribute('role')=='button' && vec[i].attributes[0].name=='role') {
				window.android.registerResult(1002);
				vec[i].click();
				isClick = true;
			}
		}
	}
	if(!isClick) {
		window.android.registerResult(2002);
		return;
	}

	var counts = 10;
	var registerFun = null;
	registerFun = setInterval(function(){
		if (counts > 0) {
			var tspans = 0;
			var lSpan = document.getElementsByTagName('span');
			if (lSpan) {
				for(var i = 0; i < lSpan.length; i++) {
					if (lSpan[i].hasAttribute('role') && lSpan[i].getAttribute('role') == 'option' && lSpan[i].hasAttribute('tabindex')) {
						tspans++;
					}
				}
			} else {
				window.android.registerResult(1003);
			}

			counts--;

			if (tspans - spans >= 1) {
				if(registerFun != null){
					clearInterval(registerFun);
				}
				window.android.registerResult(0);
			} else {
				window.android.registerResult(1004);
			}
		} else {
			if(registerFun != null){
				clearInterval(registerFun);
			}
			window.android.registerResult(-1);
		}

	}, 2000);

})()