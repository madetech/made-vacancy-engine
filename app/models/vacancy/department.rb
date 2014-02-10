require 'stringex'

module Vacancy
  class Department < ActiveRecord::Base
    attr_accessible :name, :order

    has_many :roles

    default_scope :order => '`vacancy_departments`.`order` ASC'

    scope :with_roles, -> { includes(:roles).merge(Vacancy::Role.in_department_and_active) }

    acts_as_url :name

    def to_param
      url
    end

    def to_s
      name
    end
  end
end
