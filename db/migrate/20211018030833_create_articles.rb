class CreateArticles < ActiveRecord::Migration[6.1]
  #create for articles from db:migrate, however to add using add_timestamps
  def change
    create_table :articles do |t|
      t.string :title
    end
  end
end
