require 'rails_helper'

describe 'user visits genre index page' do
  it "sees a form to create new genre" do
    admin = User.create(username: 'matt', password: 'asdf', role: 1)
    genre_1 = Genre.create(name:'Rock')
    genre_2 = Genre.create(name:'Folk')

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit genres_path

    expect(page).to have_content(genre_1.name)
    expect(page).to have_content(genre_2.name)

    fill_in :genre_name, with: 'Classical'
    click_on 'Create Genre'

    expect(current_path).to eq(genres_path)
    expect(page).to have_content('Classical')
  end
end
