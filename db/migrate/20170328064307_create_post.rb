class CreatePost < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.column :pick, :string

      t.timestamps
    end
  end
end
