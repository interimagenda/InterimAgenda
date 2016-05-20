class Job < ActiveRecord::Base
  validates_presence_of :title, :start_date, :description
  belongs_to :employer, dependent: :destroy
end
