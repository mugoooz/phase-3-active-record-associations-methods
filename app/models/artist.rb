class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    first_song = self.songs.first
    first_song.genre if first_song
  
  end

  def song_count
    self.songs.count
  end

  def genre_count
    self.genres.distinct.count
  end
end

