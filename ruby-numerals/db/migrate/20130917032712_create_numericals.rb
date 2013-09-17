class CreateNumericals < ActiveRecord::Migration
  def change
    create_table :numericals do |t|
      t.integer :number

      t.timestamps
    end
  end
end
