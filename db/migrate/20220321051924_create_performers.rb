class CreatePerformers < ActiveRecord::Migration[7.0]
  def change
    create_table :performers do |t|
      t.string :name
      t.belongs_to :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
