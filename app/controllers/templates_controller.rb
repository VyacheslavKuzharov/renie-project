class TemplatesController < ApplicationController

  def templates
    render template: 'templates/' + params[:path], layout: nil
  end

  def redirect
    redirect_to '/#/' + params[:path]
  end
end
