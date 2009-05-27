require "arrayfields"

class ApplicationController < ActionController::Base  
  layout 'galeria'
  
  helper :all # include all helpers, all the time
  
  # Specify ZiYa Helpers  
  helper Ziya::HtmlHelpers::Charts, Ziya::HtmlHelpers::Gauges, Ziya::HtmlHelpers::Maps
  helper Ziya::YamlHelpers::Charts, Ziya::YamlHelpers::Gauges, Ziya::YamlHelpers::Maps
  
  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '32352c4b71dbc38d0f0fa6d0ad8a382c'
  
  # Your licenses
  LICENSE       = "JTAN82MSEQ9O.945CWK-2XOI1X0-7L"  
  GAUGE_LICENSE = "GMW0.KO9D456TRCHGV-5ND6AIDY5BK"

  # Setup chart title
  before_filter :setup_charts
  
  # ===========================================================================
  private
  
    def setup_charts
      @charts = session[:charts] || ArrayFields.new(
        "Maps"      , :maps,      
        "Line"      , :lines, 
        "Column"    , :columns, 
        "Images"    , :image_columns,
        "Bar"       , :bars,
        "Floating"  , :floating_bars,
        "Pie"       , :pies,
        "Bubble"    , :bubbles,
        "Donut"     , :donuts,
        "Area"      , :areas,
        "Polar"     , :polars,
        "Scatter"   , :scatters,
        "Mixed"     , :mixed_charts,
        "Composites", :composites,        
        "Gauges"    , :gauges,
        "Pointers"  , :mixed
      )
      session[:charts] = @charts
    end
end
