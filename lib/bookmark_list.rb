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

  def self.create(url, title)
    if ENV['RACK_ENV'] == "test"
      connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      connection = PG.connect :dbname => 'bookmark_manager'
    end
    connection.exec "INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}');"
  end
end
