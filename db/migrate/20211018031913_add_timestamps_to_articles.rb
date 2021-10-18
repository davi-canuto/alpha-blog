class AddTimestampsToArticles < ActiveRecord::Migration[6.1]
  #Addcolumns to db:migrate from the articles
  def change
    add_column :articles, :description_at, :text
    add_column :articles, :created_at, :datetime
    add_column :articles, :update_at, :datetime
  end
  #addcolumn 1 name of article, 2 what thi is? _at for rails identify, 3 typeof
end
