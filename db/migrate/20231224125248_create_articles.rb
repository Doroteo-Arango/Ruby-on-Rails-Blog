class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      
      # This method defines two additional columns named 'created_at' & 'updated_at'
      t.timestamps
    end
  end
end
