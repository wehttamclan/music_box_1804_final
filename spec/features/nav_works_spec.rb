require 'rails_helper'

describe 'nav system' do
  it 'tests link to new song' do
    visit songs_path

    click_link 'Add New Song'

    expect(current_path).to eq(new_song_path)
  end

  it 'tests link to new artist' do
    visit artists_path

    click_link 'Add New Artist'

    expect(current_path).to eq(new_artist_path)
  end

end
