if defined?(ActiveAdmin) and Vacancy.config.admin_enabled.include?(:role)
  ActiveAdmin.register Vacancy::Role do
    menu :parent => "Vacancies", :label => "Roles", :priority => 1

    filter          :title
    filter          :created_at

    controller do
      cache_sweeper Vacancy.config.role_cache_sweeper if Vacancy.config.role_cache_sweeper
      defaults      :finder => :find_by_url
    end

    form do |f|
      f.inputs "Role" do
        f.input :title
        f.input :subtitle
        f.input :location
        f.input :image,
          :hint => f.template.image_tag(f.object.image.url(:thumb))
        f.input :description
        f.input :department
        f.input :order
        f.input :contact_name
        f.input :contact_email
        f.input :contact_phone
        f.input :active
      end

      f.actions
    end

    index :title => 'Role' do
      column :title
      column :location
      column :order
      column :created_at
      column :updated_at

      default_actions
    end
  end
end
