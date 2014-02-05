require 'stringex'

module Vacancy
  class Role < ActiveRecord::Base
    attr_accessible :title, :subtitle, :description, :order, :contact_name, :contact_email,
                    :contact_phone, :active, :department_id

    has_attached_file :image, :styles => Vacancy.config.role_image_styles

    validates_presence_of :title, :description

    belongs_to :department

    default_scope :order => '`vacancy_roles`.`order` ASC'

    acts_as_url :title

    def to_param
      url
    end

    def to_s
      title
    end
  end
end