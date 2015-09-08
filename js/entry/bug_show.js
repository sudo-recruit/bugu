var editor = new EpicEditor().load();
 $("input[type=submit]").on('click', function(){
    editor.preview();
  	var content = editor.getElement('previewer').getElementById('epiceditor-preview').innerHTML;
    
  	$("#bug_body").val(content);
  	editor.editor.innerHTML="";
});