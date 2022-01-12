# == Schema Information
#
# Table name: articles
#
#  id             :integer          not null, primary key
#  title          :string
#  description_at :text
#  created_at     :datetime
#  update_at      :datetime
#
class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum: 6, maximum: 100}
    validates :description_at, presence: true, length: {minimum: 10, maximum: 300}
end