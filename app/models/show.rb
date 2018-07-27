require 'pry'
class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    high_rating = self.highest_rating
    find_by rating: high_rating
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    low_rating = self.lowest_rating
    find_by rating: low_rating
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.order(:name)
  end
end
