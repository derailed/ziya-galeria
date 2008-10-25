gem 'arrayfields', "~> 4.6.0"
require "arrayfields"

class ApplicationController < ActionController::Base  
  layout 'galeria'
  
  # Specify ZiYa Helpers
  helper Ziya::Helper
  
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '32352c4b71dbc38d0f0fa6d0ad8a382c'
  
  # Your licenses
  LICENSE       = ""
  GAUGE_LICENSE = ""
  
  # Setup chart title
  before_filter :setup_title
  
  private
  
    def setup_title
      @title = params[:controller]
      @charts = ArrayFields.new(
        "Line"             , :lines, 
        "Column"           , :columns, 
        "Images"           , :image_columns,
        "Bar"              , :bars,
        "Pie"              , :pies,
        "Bubble"           , :bubbles,
        "Donut"            , :donuts,
        "Area"             , :areas,
        "Polar"            , :polars,
        "Scatter"          , :scatters,
        "Gauges"           , :gauges,
        "Pointers"         , :mixed
      )
    end
end
