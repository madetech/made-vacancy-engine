class CreateVacancyRoles < ActiveRecord::Migration
  def change
    create_table :vacancy_roles do |t|
      t.string      :title
      t.text        :subtitle
      t.text        :description
      t.string      :contact_name
      t.string      :contact_email
      t.string      :contact_phone
      t.integer     :order, :default => 9999
      t.integer     :department_id
      t.string      :url
      t.boolean     :active

      t.timestamps
    end

    add_attachment :vacancy_roles, :image

    add_index :vacancy_roles, :url, unique: true
  end
end
