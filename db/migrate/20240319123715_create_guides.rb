class CreateGuides < ActiveRecord::Migration[7.1]
  def change
    create_table :guides do |t|

      t.timestamps
    end
  end
end
