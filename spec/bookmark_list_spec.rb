require 'bookmark_list'

describe Bookmark do

  before :each do 
    @bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
    @persisted_data = PG.connect(dbname: 'bookmark_manager_test').query("SELECT * FROM bookmarks WHERE id = #{@bookmark.id};")
  end

  describe '.all' do 
    it 'returns a list of bookmarks' do
      test_connection

      makers_bookmark = Bookmark.all[1]
      google_bookmark = Bookmark.all[2]
      hd_bookmark = Bookmark.all.last

      expect(makers_bookmark.title).to include 'Makers Academy'
      expect(google_bookmark.title).to include 'Google'
      expect(hd_bookmark.title).to include 'A Hotdog is Not A Sandwich'
    end
  end

  describe '.create' do

    it 'creates a new bookmark' do
      expect(@bookmark).to be_a Bookmark
      expect(@bookmark.id).to eq @persisted_data.first['id']
      expect(@bookmark.url).to eq 'http://www.testbookmark.com'
      expect(@bookmark.title).to eq 'Test Bookmark'
    end
  end

  describe '.delete' do 
    it 'deletes a bookmark' do
      Bookmark.delete(@bookmark.id)
      expect(Bookmark.all).to_not include(@bookmark)
    end
  end
end
