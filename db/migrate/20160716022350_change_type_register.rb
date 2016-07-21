class ChangeTypeRegister < ActiveRecord::Migration
  change_table :registers do |t|
      t.change :email, :string
      t.change :telefono, :string
      t.change :celular, :string
    end
end
