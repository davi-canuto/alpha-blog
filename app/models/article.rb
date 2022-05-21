# == Schema Information
#
# Table name: articles
#
#  id             :bigint           not null, primary key
#  title          :string
#  description_at :text
#  created_at     :datetime
#  update_at      :datetime
#  user_id        :integer
#
class Article < ApplicationRecord
    belongs_to :user

    has_many :article_categories
    has_many :categories, through: :article_categories
    
    validates :title, presence: true, length: {minimum: 6, maximum: 100}
    validates :description_at, presence: true, length: {minimum: 10, maximum: 300}
end
