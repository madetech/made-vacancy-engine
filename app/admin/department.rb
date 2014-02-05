if defined?(ActiveAdmin) and Vacancy.config.admin_enabled.include?(:department)
  ActiveAdmin.register Vacancy::Department do
    menu :parent => "Vacancies", :label => "Departments", :priority => 2

    filter          :name
    filter          :created_at

    controller do
      cache_sweeper Vacancy.config.department_cache_sweeper if Vacancy.config.department_cache_sweeper
      defaults      :finder => :find_by_url
    end

    form do |f|
      f.inputs "Department" do
        f.input :name
        f.input :order
      end

      f.actions
    end

    index :title => 'Department' do
      column :name
      column :order
      column :created_at
      column :updated_at

      default_actions
    end
  end
end
