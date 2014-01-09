class SurveysController < ApplicationController
  respond_to :html

  def create
    survey.update survey_params
    respond_with survey, location: [:surveys]
  end

  private

  def survey
    @survey ||= Survey.new
  end
  helper_method :survey

  def survey_params
    params[:survey].permit :name, user_ids: []
  end

  def surveys
    @surveys ||= Survey.all
  end
  helper_method :surveys

  def users
    @users ||= User.all
  end
  helper_method :users
end
