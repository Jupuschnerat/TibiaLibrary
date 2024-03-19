class CreateBossNemeses < ActiveRecord::Migration[7.1]
  def change
    create_table :boss_nemeses do |t|
      t.string :local
      t.integer :janela
      t.references :guide, null: false, foreign_key: true

      t.timestamps
    end
  end
end
