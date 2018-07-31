require 'rails_helper'

describe 'a visitor visits genre index page' do
  it "sees all genres" do
    genre_1 = Genre.create(name:'Rock')
    genre_2 = Genre.create(name:'Folk')

    visit genres_path

    expect(current_path).to eq(genres_path)
    expect(page).to have_content(genre_1.name)
    expect(page).to have_content(genre_2.name)

    click_on genre_1.name

    expect(current_path).to eq(genre_path(genre_1))
  end
  it "doesn't see new genre form" do
    visit genres_path

    expect(page).to_not have_field("name")
  end


end
