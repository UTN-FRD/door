class CreateKeys < ActiveRecord::Migration[5.1]
  def change
    create_table :keys do |t|
      t.string :codigo
      t.string :numero_de_copia

      t.timestamps
    end
  end
end
