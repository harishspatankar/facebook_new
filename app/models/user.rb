# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  first_name    :string
#  last_name     :string
#  email         :string
#  date_of_birth :datetime
#  gender        :string
#  password      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ApplicationRecord
  has_one :address, dependent: :destroy
  has_many :posts, dependent: :destroy
  validates :password, confirmation: true

end
