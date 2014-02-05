module Vacancy
  class VacancyController < Vacancy::ApplicationController
    layout 'application'

    def index
      @vacancies = Vacancy::Role.where(:active => true)
    end

    def show
      @job = Vacancy::Role.find_by_url!(params[:role])

      raise ActiveRecord::RecordNotFound.new('Page not found') if @job.nil?
    end
  end
end
