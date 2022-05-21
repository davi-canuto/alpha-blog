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
class ArticleCategory < ApplicationRecord
    belongs_to :article
    belongs_to :category
end
