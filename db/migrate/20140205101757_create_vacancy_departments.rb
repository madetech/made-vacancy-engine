class CreateVacancyDepartments < ActiveRecord::Migration
  def change
    create_table :vacancy_departments do |t|
      t.string      :name
      t.integer     :order, :default => 9999
      t.string      :url

      t.timestamps
    end

    add_index :vacancy_departments, :url, unique: true
  end
end
