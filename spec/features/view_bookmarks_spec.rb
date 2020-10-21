feature 'Viewing bookmarks' do
  scenario 'Visit bookmark page' do 
    test_connection
    visit '/bookmarks'
  
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.ahotdogisnotasandwich.com'
  end
end
