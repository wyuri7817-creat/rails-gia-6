class User < ApplicationRecord
  validates :name, presence: true,
                   format: { with: /\A[a-zA-Z]+\z/, message: "solo letras" },
                   length: { maximum: 15 }

  validates :password, presence: true, length: { is: 8 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
