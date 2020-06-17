class Artist < ApplicationRecord
    
    validates :name, presence: true
    validates :url, presence: true

    puts 1 + 1
    
end


