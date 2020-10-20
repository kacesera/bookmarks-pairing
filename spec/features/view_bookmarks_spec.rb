feature 'Viewing bookmarks' do
  scenario 'Visit bookmark page' do 
    visit '/bookmarks'
    expect(page).to have_content ['http://www.makersacademy.com', 'http://www.google.com', 'http://www.destroyallsoftware.com']
  end
end
