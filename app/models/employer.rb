class Employer < User
  has_many :jobs
  validates_presence_of :company_name, :location, :business, :description, on: :update

  def self.search(query)
    where("company_name ILIKE ? OR business ILIKE ? OR field ILIKE ? ", "%#{query}%", "%#{query}%", "%#{query}%")
  end
end
