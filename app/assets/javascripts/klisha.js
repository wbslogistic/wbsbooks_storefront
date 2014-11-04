function bulk_order_sum(element){
	var str1 = "t"
	var res = str1.concat(element.id);
	var price = element.getAttribute("price");
	var total = element.value * price;
	document.getElementById(res).innerHTML = total.toFixed(2);
};
