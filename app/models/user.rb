class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes
  has_many :ingredients

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :sex, presence: true

  enum role: { guest: 0, admin: 1 }

  enum sex: { m: 0, f: 1 }

  def to_s
    "#{first_name} #{last_name} (#{email})"
  end
end
