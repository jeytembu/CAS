function Pager(tableName, itemsPerPage,resdiv) {
    this.tableName = tableName;
    this.itemsPerPage = itemsPerPage;
    this.currentPage = 1;
    this.pages = 0;
    this.inited = false;
    this.count=0;
    this.resdiv = resdiv;
    
    this.showRecords = function(from, to) {        
        var rows = document.getElementById(tableName).rows;
        for (var i = 1; i < rows.length; i++) {
            if (i < from || i > to)  
                rows[i].style.display = 'none';
            else
                rows[i].style.display = '';
        }
    }
    
    this.showPage = function(pageNumber) {
    	if (! this.inited) {
    		alert("not inited");
    		return;
    	}
        var rows = document.getElementById(tableName).rows;
        var records = (rows.length - 1); 
        if(pageNumber < this.pages){
            this.count = pageNumber * this.itemsPerPage;
        }else{
            rem=records-this.count
            this.count+=rem;
        }
        var resnum = document.getElementById(resdiv);
        var res = "Showing results "+this.count+" of "+records;

        var oldPageAnchor = document.getElementById('pg'+this.currentPage);
        oldPageAnchor.className = 'pg-normal';
        
        this.currentPage = pageNumber;
        var newPageAnchor = document.getElementById('pg'+this.currentPage);
        newPageAnchor.className = 'pg-selected';
        
        var from = (pageNumber - 1) * itemsPerPage + 1;
        var to = from + itemsPerPage - 1;
        this.showRecords(from, to);
        resnum.innerHTML = res;
    }  
    this.pageNum=function(page,e){
        e.preventDefault();
        this.showPage(page);
    } 
    
    this.prev = function(e) {
        e.preventDefault();
        if (this.currentPage > 1)
            this.showPage(this.currentPage - 1);
    }
    
    this.next = function(e) {
        e.preventDefault();
        if (this.currentPage < this.pages) {
            this.showPage(this.currentPage + 1);
        }
    }                        
    
    this.init = function() {
        var rows = document.getElementById(tableName).rows;
        var records = (rows.length - 1); 
        this.pages = Math.ceil(records / itemsPerPage);
        this.inited = true;
    }

    this.showPageNav = function(pagerName, positionId) {
    	if (! this.inited) {
    		alert("not inited");
    		return;
    	}
    	var element = document.getElementById(positionId);
    	var pagerHtml = '<ul class="paginate"> <li><a href="#"  onclick="' + pagerName + '.prev(event);" class="pg-normal"> &#171 Prev </a></li>';
        for (var page = 1; page <= this.pages; page++) 
            pagerHtml += '<li><a href="#" id="pg' + page + '" class="pg-normal" onclick="' + pagerName + '.pageNum(' + page + ',event);">' + page + '</a></li>';
        pagerHtml += '<li><a href="#"  onclick="'+pagerName+'.next(event);" class="pg-normal"> Next &#187;</a></li></ul>';            
        
        element.innerHTML = pagerHtml;

    }
}

