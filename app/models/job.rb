class Job < ApplicationRecord
  belongs_to :company

  validates :company_id, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :url, presence: true, uniqueness: true
  validates :location, presence: true
  validates :active, presence: true
  validates :salary_range, presence: true
end
