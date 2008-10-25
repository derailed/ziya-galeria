class GaugesController < ApplicationController

  def index
  end
  
  def load_gauges
    render :update do |page|
      page.replace_html :chart_type, @title
      page.replace_html :workspace, :partial => "gauges"
    end
  end

  # ---------------------------------------------------------------------------
  # load thermo gauge
  def load_thermo
    gauge = Ziya::Gauges::Thermo.new( GAUGE_LICENSE )
    opts  = { 
      :x           => 140,
      :y           => 50,
      :due_point   => rand( 120 ),
      :title       => 'weather',
      :gauge_color => 'ff0000',
      :url         => load_thermo_url,
      :delay       => 15 }
    gauge.set_preferences( opts )
    respond_to do |fmt|
      fmt.xml { render :xml =>  gauge.to_xml }
    end    
  end
  
  # load the signal gauge
  def load_signal
    signal  = [ 2.9, 1.3, 1.8, 3.5, 4, 5.7, 6.1, 7.3, 8.9, 9.2, 10.7 ]    
    options = { 
        :x           => 120,
        :y           => 100,
        :signal      => signal[rand( 11 )],
        :previous    => session[:previous] || 0,
        :goal        => nil,
        :url         => load_signal_url,
        :delay       => 1 
    }    
    gauge = Ziya::Gauges::Signal.new( GAUGE_LICENSE )
    session[:previous] = options[:signal]
    gauge.set_preferences( options )
    respond_to do |fmt|
      fmt.xml { render :xml =>  gauge.to_xml }
    end    
  end
  
end