class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.column :title, :string
      t.column :summary, :text
      t.column :author_id, :integer

      t.timestamps
    end
  end
end
