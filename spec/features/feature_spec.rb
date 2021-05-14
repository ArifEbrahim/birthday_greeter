feature 'birthday check' do
  scenario 'can enter todays date as birthday and be wished' do
    visit('/')
    fill_in('name', with: 'Bob')
    fill_in('day', with: '14')
    select('May', from: 'month')
    click_button('Submit')
    expect(page).to have_content 'Happy Birthday Bob!'
  end
end