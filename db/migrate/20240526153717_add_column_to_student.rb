class AddColumnToStudent < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :Student, :string
    add_column :students, :email_adress, :string
  end
end
