class BossNemesis < ApplicationRecord
  belongs_to :guide
  has_many :groups
end
