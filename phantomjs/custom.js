//// HELPER FUNCTIONS

function filter_elements(elements, keep_func) {
	var keepers = new Array();
	var elements_length = elements.length;
	for(var i = 0; i < elements_length; ++i) {
		if(keep_func(elements[i])) {
			keepers.push(elements[i]);
		}
	}
	return keepers;
}

function click_elem(element) {
	var e = document.createEvent('MouseEvents');
	e.initMouseEvent('click', true, true);
	element.dispatchEvent(e);
}
