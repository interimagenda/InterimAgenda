class Freelancer < User
  validates_presence_of :gender, :education, :business, :field, :description, :availability, :pay_rate, on: :update
  def self.search(query)
    where("last_name ILIKE ? OR business ILIKE ? OR field ILIKE ? ", "%#{query}%", "%#{query}%", "%#{query}%")
  end
end
