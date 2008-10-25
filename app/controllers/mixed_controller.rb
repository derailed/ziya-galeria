class MixedController < ApplicationController

  def index
  end

  def load_gauges
    render :update do |page|
      page.replace_html :chart_type, @title
      page.replace_html :workspace, :partial => "pointers"
    end
  end

  # ---------------------------------------------------------------------------
  # load compass
  def load_compass
    gauge = Ziya::Gauges::Base.new( GAUGE_LICENSE, "compass" )
    respond_to do |fmt|
      fmt.xml { render :xml =>  gauge.to_xml }
    end    
  end
    
  # ---------------------------------------------------------------------------
  # load gauge samples
  def load_minimeters
    gauge = Ziya::Gauges::Base.new( GAUGE_LICENSE, "mini_meters" )
    respond_to do |fmt|
      fmt.xml { render :xml =>  gauge.to_xml }
    end    
  end
  
end