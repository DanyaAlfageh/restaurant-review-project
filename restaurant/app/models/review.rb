class Review < ApplicationRecord
    belongs_to :user
    belongs_to :resturant
    validates :title, presence: true,
    length: {in: 2..20}
    validates :body, presence: true,
    length: {in: 10..200}
    validates_presence_of :title, :on => :update
    validates_presence_of :body, :on => :update
end
