var editor = new EpicEditor().load();
 $("#comment-button").on('click', function(){
    editor.preview();
  	var content = editor.getElement('previewer').getElementById('epiceditor-preview').innerHTML;
    
  	$("#comment_content").val(content);
  	editor.editor.innerHTML="";
});