class User < ApplicationRecord
  belongs_to :role
  before_create :set_default_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cars
  has_many :reservations

  private
  def set_default_role
    self.role ||= Role.find_by_name('registered')
  end
end
