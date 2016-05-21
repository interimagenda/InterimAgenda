class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # ALWAYS: there should always be a first and last name.
  validates_presence_of :first_name, :last_name

  # ON CREATE: on create (and only on create) should there be a user-type.
  validates_presence_of :type, on: :create

  # ON UPDATE: common attributes for both employers and freelancers
  validates_presence_of :business, :description, on: :update

  def self.types
    %w(Employer Freelancer)
  end
end
