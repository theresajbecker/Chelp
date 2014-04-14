module CharitiesHelper

  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end

  def sortable(column, title)
    direction = (session[:direction] == "asc") ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction}
  end

  def isHighlighted(column)
    (session[:sort] == column) ? 'hilight' : ''
  end

end