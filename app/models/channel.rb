class Channel < ApplicationRecord
  has_many :messages, as: :messagable, :dependent => :destroy
  belongs_to :user
  belongs_to :team
  validates_presence_of :slug, :team, :user
end
