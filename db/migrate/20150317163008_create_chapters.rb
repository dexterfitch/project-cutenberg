class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.column :title, :string
      t.column :body, :text
      t.column :number, :integer
      t.column :book_id, :integer

      t.timestamps
    end
  end
end
