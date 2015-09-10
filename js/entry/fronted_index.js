function filterStatus(filter){
  filtered = $("td[data-status]").filter(function(index) {
  	return this.dataset.status !== filter;
  });
  
  return filtered;
}

function getStatus(filter){
  filtered = $("td[data-status]").filter(function(index) {
  	return this.dataset.status === filter;
  });
  
  return filtered;
}

function showAllResult(){
  $("td").parent().show();
}

function displayFiltered(filterString){
  var filtered = filterStatus(filterString);
  $(filtered).parent().hide();


}


var $filters = $('.filters'); 

$.each($filters, function(index, val) {
  var text = $(this).text();
  text += "(" + countStatus(this.dataset.filter) + ")";
  $(this).text(text);
});

$filters.on('click', function(event) {
	event.preventDefault();
    showAllResult();
    
    displayFiltered($(this).data("filter"));
});

function countStatus(filterString){
  var count = getStatus(filterString).length;
  return count;
}
