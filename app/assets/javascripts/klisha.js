function bulk_order_sum(element){
	var str1 = "t"
	var res = str1.concat(element.id);
	var price = element.getAttribute("price");
	document.getElementById(res).innerHTML = element.value * price;
}