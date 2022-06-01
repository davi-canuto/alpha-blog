# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false },
            length: {minimum:3, maximum:24}

  has_many :article_categories
  has_many :articles, through: :article_categories

  is_impressionable
end
