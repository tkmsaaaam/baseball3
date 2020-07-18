class Running < ApplicationRecord
  belongs_to :situation
  validates :place, presence: true, length: { maximum: 1 }
  validates :base_id, presence: true, length: { maximum: 1 }
  validates :go_counts, presence: true, length: { maximum: 1 }
end
