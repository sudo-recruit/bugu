module FrontedHelper
  def convert_chinese(bug)
  	if bug.status == 'unread'
  		return "未讀"
  	elsif bug.status == 'in_process'
  		return "解決中"
  	else
  		return "已解決"
  	end	
  end
end
