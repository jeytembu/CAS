// function progress(){
//     var elem = document.getElementById('myBar');
//     var wid = window.getComputedStyle(elem, null).getPropertyValue("width");
//     width = 100%
//     elem.style.width = width + '%'; 

// }
function validate(){
	var rows = document.getElementsByTagName('tr');
	var bol = true;
	var count = 0;
	for(var v=0;v<=count;v++){
		var c = rows[v].childNodes;
		console.log(c.length);
		for(var t = 0;t<c.length;t++){
			if(c[t].nodeName == 'TD'){
				var rad = c[t].childNodes.nodeName;
				console.log(rad);
			}
		}
	}	
	// for(v=0;v<=count;v++){
	// 	var c = rows[v].childNodes;
	// 	for( var x= 0; x<c.length;x++){
	// 		if(c[x].nodeName == 'TD'){
	// 			var radio = c[x].childNodes;
	// 			for(var y =0;y<radio.length;y++){
	// 				if(radio[y].checked){
	// 					bol = true;
	// 					count++;
	// 					break;
	// 				}else{
	// 					bol=false;
	// 				}
	// 			}
	// 			// if(!bol){
	// 			// 	console.log('aloha');
	// 			// 	break;
	// 			// }
	// 		}
	// 	}
	// 	// if(!bol && count<=3){
	// 	// 	break;
	// 	// }
	// }
	
	return bol;
}
