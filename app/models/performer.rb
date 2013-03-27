class Performer < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, :presence => true
  validates :description, :presence => true,
                          :length => { :minimum => 5, :maximum => 140 }
  validates :user_id, presence: true

  has_many :reviews, :dependent => :destroy
  belongs_to :user, :inverse_of => :performers
end
