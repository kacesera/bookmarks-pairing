require 'bookmark_list'

describe BookmarkList do

  describe '.all' do 
    it 'returns a list of bookmarks' do
      test_connection

      bookmarks = BookmarkList.all

      expect(bookmarks).to include 'http://www.makersacademy.com'
      expect(bookmarks).to include 'http://www.google.com'
      expect(bookmarks).to include 'http://www.ahotdogisnotasandwich.com'
    end
  end

  describe '.create' do
    it 'creates a bookmark to store in bookmark_list' do
      BookmarkList.create("http://www.url.com", 'URL')
      expect(BookmarkList.all).to include 'http://www.url.com'
    end
  end


end
