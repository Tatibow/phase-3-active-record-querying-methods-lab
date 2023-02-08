class Show < ActiveRecord::Base

 def self.highest_rating
   self.maximum(:rating)
 end

 def self.most_popular_show
    self.all.max_by do |show|
        show.rating
    end
 end

def self.lowest_rating
    self.minimum(:rating)

end

def self.least_popular_show
    self.all.min_by do |show|
        show.rating
    end
end

def self.ratings_sum
    sum(:rating)
end

def self.popular_shows
    self.where("rating > 5")
end

def self.shows_by_alphabetical_order
    order(:name)
end

end
