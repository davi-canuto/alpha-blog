# == Schema Information
#
# Table name: articles
#
#  id             :integer          not null, primary key
#  title          :string
#  description_at :text
#  created_at     :datetime
#  update_at      :datetime
#  user_id        :integer
#
class Article < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, length: {minimum: 6, maximum: 100}
    validates :description_at, presence: true, length: {minimum: 10, maximum: 300}
end
