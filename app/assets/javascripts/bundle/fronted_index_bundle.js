/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};

/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {

/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;

/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			exports: {},
/******/ 			id: moduleId,
/******/ 			loaded: false
/******/ 		};

/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);

/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;

/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}


/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;

/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;

/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/js/";

/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ function(module, exports) {

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


	$("#showAll").on('click', function(e){
	  e.preventDefault();
	  showAllResult();
	});

/***/ }
/******/ ]);