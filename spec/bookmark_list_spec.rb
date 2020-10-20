require 'bookmark_list'

describe BookmarkList do

  it 'has bookmarks' do
    expect(subject.all).to eq ['http://www.makersacademy.com', 'http://www.google.com', 'http://www.destroyallsoftware.com']
  end
end
