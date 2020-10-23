feature 'Delete Bookmarks' do
  scenario "User can delete bookmarks from '/bookmarks' path" do 
    test_connection
    add_bookmark_for_deletion
    visit '/bookmarks'
    first('.bookmark').click_button 'Delete'
    expect(page).to_not have_link('Facebook', href: 'www.facebook.com')
  end
end