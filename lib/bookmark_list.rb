require 'pg'

class Bookmark

  attr_reader :id, :title, :url

  def initialize(id:, title:, url:)
    @id  = id
    @title = title
    @url = url
  end

  def self.connect_to_db
    if ENV['RACK_ENV'] == "test"
      @@connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      @@connection = PG.connect :dbname => 'bookmark_manager'
    end
  end

  def self.all
    connect_to_db
    table = @@connection.exec "SELECT * FROM bookmarks"  
    table.map do |bookmark|   
      Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
    end
  end

  def self.create(url:, title:)
    connect_to_db
    result = @@connection.exec "INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}') RETURNING id, url, title"
    Bookmark.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
  end

  def self.delete(id)
    connect_to_db
    @@connection.exec("DELETE FROM bookmarks WHERE id = '#{id}'")
  end
end
