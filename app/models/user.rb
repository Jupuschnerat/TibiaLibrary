class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :character_name, presence: true
  belongs_to :group, optional: true
  has_many :owned_groups, class_name: "Group", foreign_key: "owner_id"
end
