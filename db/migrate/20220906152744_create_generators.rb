class CreateGenerators < ActiveRecord::Migration[7.0]
  def change
    create_table :generators do |t|
      t.string :quotes

      t.timestamps
    end
  end
end
