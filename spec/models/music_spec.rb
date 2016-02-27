require 'rails_helper'

describe Music do
  it 'needs a genre' do
    genre = Genre.new name: 'Rock'
    music = Music.new name: 'I was made for loving you', url: 'youtube.com', description: 'Kiss'

    expect(music).to_not be_valid

    music.genre << genre
    expect(music).to be_valid
  end
end
