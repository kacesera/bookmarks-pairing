require 'pg'

class BookmarkList

  def self.all
    if ENV['RACK_ENV'] == "test"
      connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      connection = PG.connect :dbname => 'bookmark_manager'
    end
    table = connection.exec "SELECT * FROM bookmarks"  
    table.map { |bookmark| bookmark['url'] }  
  end

end
