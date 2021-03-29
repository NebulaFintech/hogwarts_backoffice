class Wizard < ApplicationRecord
  belongs_to :house, optional: true
  has_many :school_applications
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: %i[staff student]

  def full_name
    names + ' ' + surname
  end
end
