module FrontedHelper
  def convert_chinese(bug)
  	if bug.status == 'unread'
  		return "未讀/尚未解決"
  	elsif bug.status == 'in_process'
  		return "解決中"
  	else
  		return "已解決"
  	end	
  end

  def convert_change_status(comment)
  	if comment.change_status == 'unread'
  		return "未讀/尚未解決"
  	elsif comment.change_status == 'in_process'
  		return "解決中"
  	else
  		return "已解決"
  	end	
  end
end
