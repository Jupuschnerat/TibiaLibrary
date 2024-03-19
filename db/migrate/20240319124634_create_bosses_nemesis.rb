class CreateBossesNemesis < ActiveRecord::Migration[7.1]
  def change
    create_table :bosses_nemeses do |t|
      t.integer :janela
      t.string :local
      t.references :guide, null: false, foreign_key: true

      t.timestamps
    end
  end
end
