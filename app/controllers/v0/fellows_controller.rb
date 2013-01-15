class V0::FellowsController < ApplicationController

  # GET /fellows
  # GET /fellows.json
  def index
    @clean_params = params.slice(:team, :name)
    @fellows = Fellow.all # if @clean_params.empty?

    [:name, :team].each do |parameter|
      if @clean_params.has_key? parameter
        @clean_single_param = @clean_params[parameter].upcase.gsub(/\s/,'')
        @fellows.select! { |f| f[parameter].upcase.gsub(/\s/,'').include? @clean_single_param }
      end
    end

    render json: @fellows
  end

end
