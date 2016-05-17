class Freelancer < User
  validates_presence_of :first_name, :last_name, :birth_date, :gender
end
