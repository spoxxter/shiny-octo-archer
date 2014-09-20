class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :search_term
      t.string :location

      t.timestamps
    end
  end
end
