class CreateWrites < ActiveRecord::Migration[5.1]
  def change
    create_table :writes do |t|
      t.text :content

      t.timestamps
    end
  end
end
