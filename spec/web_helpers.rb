require_relative '../lib/bookmark_list'

def test_connection
  Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
  Bookmark.create(url: 'http://www.google.com', title: 'Google')
  Bookmark.create(url: 'http://www.ahotdogisnotasandwich.com', title: 'A Hotdog is Not A Sandwich')
end

def add_bookmark_for_deletion
  Bookmark.create(url: 'www.facebook.com', title: 'Facebook')
end
