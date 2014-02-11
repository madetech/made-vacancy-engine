class AddRoleLocation < ActiveRecord::Migration
  def change
    add_column :vacancy_roles, :location, :string
  end
end
