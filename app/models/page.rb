class Page < ActiveRecord::Base
    validates :description, presence: true
end
