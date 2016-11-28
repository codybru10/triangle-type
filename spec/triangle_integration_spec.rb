require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the type of triangle', {:type => :feature}) do

  it('processes the user entry and returns the type of triangle') do
    visit('/')
    fill_in('side-one', :with => 25)
    fill_in('side-two', :with => 25)
    fill_in('side-three', :with => 25)
    click_button('Find Triangle')
    expect(page).to have_content("Equilateral")
  end

  it('processes the user entry and returns the type of triangle') do
    visit('/')
    fill_in('side-one', :with => 25)
    fill_in('side-two', :with => 25)
    fill_in('side-three', :with => 30)
    click_button('Find Triangle')
    expect(page).to have_content("Isosceles")
  end

  it('processes the user entry and returns the type of triangle') do
    visit('/')
    fill_in('side-one', :with => 25)
    fill_in('side-two', :with => 26)
    fill_in('side-three', :with => 27)
    click_button('Find Triangle')
    expect(page).to have_content("Scalene")
  end

  it('processes the user entry and returns the type of triangle') do
    visit('/')
    fill_in('side-one', :with => 25)
    fill_in('side-two', :with => 25)
    fill_in('side-three', :with => 50)
    click_button('Find Triangle')
    expect(page).to have_content("Not a Triangle")
  end



end
