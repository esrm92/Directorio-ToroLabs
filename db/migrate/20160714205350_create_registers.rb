class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :nombre
      t.integer :telefono
      t.integer :celular
      t.text :email

      t.timestamps null: false
    end
  end
end
