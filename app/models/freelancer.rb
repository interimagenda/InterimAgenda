class Freelancer < User
  def self.search(query)
    where("last_name ILIKE ? OR business ILIKE ? OR field ILIKE ? ", "%#{query}%", "%#{query}%", "%#{query}%")
  end
end
