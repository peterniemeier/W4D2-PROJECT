class ChangeCatsTable < ActiveRecord::Migration[5.2]
  def change
    change_column :cats, :birth_date, :string
  end
end
