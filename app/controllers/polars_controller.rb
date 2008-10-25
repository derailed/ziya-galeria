class PolarsController < ApplicationController
  
  def index
  end
  
  def load_polars
    render :update do |page|
      page.replace_html :chart_type, @title
      page.replace_html :workspace, :partial => "polar"
    end
  end

  def load_polar_1
    chart = Ziya::Charts::Polar.new( LICENSE, "polar_1_chart" )
    chart.add :axis_category_text, %w[speed power cost reliability efficiency]
    chart.add :series, "car 1", [ 60, 90, 40, 90, 50 ]
    chart.add :series, "car 2", [ 85, 70, 80, 40, 90 ]
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
  
  def load_polar_2
    chart = Ziya::Charts::Polar.new( LICENSE, "polar_2_chart" )
    chart.add :axis_category_text, %w[North  North\rEast  East  South\rEast  South  South\rWest  West  North\rWest ]
    chart.add :series, "Summer",
      [ { :shadow => 'shadow1', :value => 12 }, 15, 20, 15, 10, 7, 8, 6, 6, 5, 6, 6, 7, 8, 10, 10 ]
    chart.add :series, "Autumn",
      [ { :shadow => 'shadow1', :value => 10 }, 10, 15, 25, 30, 35, 32, 30, 25, 22, 18, 10, 8, 5, 7, 10 ]
    chart.add :series, "Winter",
      [ { :shadow => 'shadow1', :value => 10 }, 10, 15, 20, 25, 30, 40, 50, 40, 30, 30, 25, 20, 10, 10, 10 ]
    chart.add :series, "Spring",
      [ { :shadow => 'shadow1', :value => 2 }, 10, 15, 15, 20, 25, 25, 22, 20, 15, 10, 12, 10, 7, 5, 3 ]
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
end

