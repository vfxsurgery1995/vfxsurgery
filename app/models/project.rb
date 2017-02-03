class Project < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :description, presence: true
  default_scope {order(created_at: :desc)} 
end
