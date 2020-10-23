feature 'Viewing bookmarks' do
  scenario 'Visit bookmark page' do 
    test_connection
    visit '/bookmarks'
    expect(page).to have_link('Google', href: 'http://www.google.com')
    expect(page).to have_link('A Hotdog is Not A Sandwich', href: 'http://www.ahotdogisnotasandwich.com')
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
  end
end
