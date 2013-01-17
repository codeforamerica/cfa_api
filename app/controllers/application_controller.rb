class ApplicationController < ActionController::API

  after_filter :set_access_control_headers

  def root
    redirect_to "https://github.com/codeforamerica/cfa_api"
  end


  def set_access_control_headers(allowed_origins = '*')
    if (request.headers['Origin']) 
      response.headers['Access-Control-Allow-Origin'] = allowed_origins
    end
  end

end
