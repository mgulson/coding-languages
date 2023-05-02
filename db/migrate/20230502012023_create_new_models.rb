class CreateNewModels < ActiveRecord::Migration[7.0]
  def change
    create_table :new_models do |t|

      t.timestamps
    end
  end
end
