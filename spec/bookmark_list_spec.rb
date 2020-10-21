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
end
