class DonutsController < ApplicationController
  
  def load_donuts
    render :update do |page|
      page.replace_html :workspace, :partial => "donut"
    end
  end
  
  def load_donut_1
    chart = Ziya::Charts::Donut.new( LICENSE, "donut_1_chart" )
    chart.add :axis_category_text, %w[2004 2005 2006 2007 2008]
    chart.add :series, "", 
    [ 
      { :shadow => 'high', :line_alpha => '75', :line_color => 'FFFFFF', :bevel => 'data', :line_thickness => '3', :value => 20 },
      { :shadow => 'high', :line_alpha => '75', :line_color => 'FFFFFF', :bevel => 'data', :line_thickness => '3', :value => 10 }, 
      { :shadow => 'high', :line_alpha => '75', :line_color => 'FFFFFF', :bevel => 'data', :line_thickness => '3', :value => 30 },
      { :shadow => 'high', :line_alpha => '75', :line_color => 'FFFFFF', :bevel => 'data', :line_thickness => '3', :value => 50 },
      { :shadow => 'high', :line_alpha => '75', :line_color => 'FFFFFF', :bevel => 'data', :line_thickness => '3', :value => 40 } 
    ]
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

  def load_donut_2
    chart = Ziya::Charts::Donut.new( LICENSE, "donut_2_chart" )
    chart.add :axis_category_text, [ "" ]*6
    chart.add :series, "2006", [
      { :line_alpha => '50', :line_color => 'eeffee', :label => 'region A', :line_thickness => '2', :value => 75 },
      { :line_alpha => '50', :line_color => 'eeffee', :label => 'region B', :line_thickness => '2', :value => 25 },
      { :line_alpha => '50', :line_color => 'eeffee', :label => 'region C', :line_thickness => '2', :value => 10 }
    ]
    chart.add :series, "2007", [
      { :line_alpha => '50', :line_color => 'eeffee', :label => 'region A', :line_thickness => '2', :value => 35 },
      { :line_alpha => '50', :line_color => 'eeffee', :label => 'region B', :line_thickness => '2', :value => 10 },
      { :line_alpha => '50', :line_color => 'eeffee', :label => 'region C', :line_thickness => '2', :value => 20 }
    ]
    chart.add :series, "2008", [
      { :line_alpha => '50', :line_color => 'eeffee', :label => 'region A', :line_thickness => '2', :value => 10 },
      { :line_alpha => '50', :line_color => 'eeffee', :label => 'region B', :line_thickness => '2', :value => 25 },
      { :line_alpha => '50', :line_color => 'eeffee', :label => 'region C', :line_thickness => '2', :value => 10 },
      { :line_alpha => '50', :line_color => 'eeffee', :label => 'region D', :line_thickness => '2', :value => 10 },
      { :line_alpha => '50', :line_color => 'eeffee', :label => 'region E', :line_thickness => '2', :value => 10 },
      { :line_alpha => '50', :line_color => 'eeffee', :label => 'region F', :line_thickness => '2', :value => 10 }
    ]
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

end