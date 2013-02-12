module CustomHelpers
  def full_title
    retval = ''
    
    if is_blog_article?
      retval = current_article.title
    elsif current_resource.data['title']
      retval = current_resource.data['title']
    end

    retval += " &ndash; " unless retval.empty?
    retval += "Capital Ideas"
    retval
  end
end
