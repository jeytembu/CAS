var count = 0;
var width = 0;
var qstcount = 0;
function Pager(tableName, itemsPerPage) {
    this.tableName = tableName;
    this.itemsPerPage = itemsPerPage;
    this.currentPage = 1;
    this.pages = 0;
    this.inited = false;

    
    this.showRecords = function(from, to) {        
        var rows = document.getElementsByClassName('question');
        for (var i = 0; i < rows.length; i++) {
            if (i >= (from-1) && i <= (to-1))
                rows[i].style.display = '';
            else
                rows[i].style.display = 'none';
        }
    }
    
    this.showPage = function(pageNumber) {
    	if (! this.inited) {
    		alert("not inited");
    		return;
    	}
        
        var oldPageAnchor = document.getElementById('pg'+this.currentPage);
        oldPageAnchor.className = 'pg-normal';
        
        this.currentPage = pageNumber;
        var newPageAnchor = document.getElementById('pg'+this.currentPage);
        newPageAnchor.className = 'pg-selected';

        var from = (pageNumber - 1) * itemsPerPage + 1;
        var to = from + itemsPerPage - 1;
        this.showRecords(from, to);
        if(pageNumber === 1){
            document.getElementById('previous').style.display = 'none';
            if(count > 0){
                for(var x=1; x <= count;x++){
                    document.getElementById('pg'+x).style.display = '';
                }
            }
            else{
                for(var x=1; x < this.pages+1;x++){
                    document.getElementById('pg'+x).style.display = 'none';
                }
            }
                
        }
        else{
            document.getElementById('previous').style.display = '';
            if(pageNumber >= 1){
                for(var x=1; x <= pageNumber;x++){
                    document.getElementById('pg'+x).style.display = '';
                }
                if(pageNumber == 6 && width<98){
                    var elem = document.getElementById('myBar');
                    width=100;
                    elem.style.width = width + '%';
                }
            }
             count = pageNumber;
        }  
}   
    
    this.prev = function() {
        if (this.currentPage > 1){
            if(width < 98){
                var rows = document.getElementsByClassName('question');
                var elem = document.getElementById('myBar');
                var reduce = itemsPerPage * (100/(rows.length-1));
                width =width - reduce;
                elem.style.width = width + '%'; 
            }
            this.showPage(this.currentPage - 1);
        }    
    }
    
    this.next = function() {
        if (this.currentPage < this.pages) {
            if(qstcount > 0){
                document.getElementById("tst"+qstcount).style.display = 'none';
            }
            var end = this.currentPage * this.itemsPerPage;
            var begin = end - itemsPerPage;
            var bol;
            var rows = document.getElementsByClassName('question');
            for(var x = begin; x<end;x++){
               var val = rows[x].getElementsByTagName("input");
               for(var y = 0 ;y < val.length;y++){
                    if(val[y].checked){
                       bol = true;
                       break;
                    }else{
                        bol = false;
                    }
               }
               if(bol == false){
                    qstcount=x+1;
                    var tt = document.getElementById("tst"+qstcount);
                    tt.innerHTML = "**please provide an answer***";
                    break;
               }
            }
            if(bol == true){
                var elem = document.getElementById('myBar');
                qstpercent = 100/(rows.length-1);
                if(width<100){
                    w = qstpercent*this.itemsPerPage;
                    width += w;
                    elem.style.width = width + '%'; 
                }
                this.showPage(this.currentPage + 1);

            }
            else{
                var tt = document.getElementById("tst");
                tt.innerHTML = "Please fill all the question ";
            }
            
        }
    }                        
    
    this.init = function() {
        var rows = document.getElementsByClassName('question');
        var records = (rows.length); 
        this.pages = Math.ceil(records / itemsPerPage);
        this.inited = true;
    }

    this.showPageNav = function(pagerName, positionId) {
    	if (! this.inited) {
    		alert("not inited");
    		return;
    	}
        else{
            var element = document.getElementById(positionId);
            var pagerHtml = '<span onclick="' + pagerName + '.prev();" class="pg-normal" id="previous"> &#171 Prev </span>';
            for (var page = 1; page <= this.pages; page++) 
                pagerHtml += '<span id="pg' + page + '" class="pgs pg-normal" onclick="' + pagerName + '.showPage(' + page + ');">' + page + '</span>';
            pagerHtml += '<span onclick="'+pagerName+'.next();" class="pg-normal"> Next &#187;</span>'; 
            element.innerHTML = pagerHtml;   
             
        }
    	
    }
}

