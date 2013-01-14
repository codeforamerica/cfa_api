class ApplicationController < ActionController::API

  def root
    redirect_to "https://github.com/codeforamerica/cfa_api"
  end

end
