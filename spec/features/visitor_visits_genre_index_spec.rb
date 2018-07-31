require 'rails_helper'

describe 'a visitor visits genre index page' do
  it "sees all genres" do
    genre_1 = Genre.create(name:'Rock')
    genre_2 = Genre.create(name:'Folk')

    visit genres_path

    expect(current_path).to eq(genres_path)
    expect(page).to have_content(genre_1.name)
    expect(page).to have_content(genre_2.name)
  end
end
