require 'pg'

class BookmarkList

  def all
    connection = PG.connect :dbname => 'bookmark_manager'
    table = connection.exec "SELECT * FROM bookmarks"  
    table.map { |bookmark| bookmark['url'] }  
  end

end
