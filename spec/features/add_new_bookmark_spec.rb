feature 'Add new bookmark' do
  scenario 'user can save a bookmark and receives confirmation' do
    visit('/')
    fill_in(:add_bookmark, with: "url")
    click_button('Submit')
    expect(page).to have_content('Thank you for submitting a bookmark')
  end
end
