class ScattersController < ApplicationController
    
  def load_scatters
    render :update do |page|
      page.replace_html :workspace, :partial => "scatter"
    end
  end

  def load_scatter_1
    chart = Ziya::Charts::Scatter.new( LICENSE, "scatter_1_chart" )
    chart.add :axis_category_text, %w[x y]
    chart.add :series            , "veh 1", [ { :shadow => 'low', :value => 90 }, 500 ]
    chart.add :series            , "veh 2", [ { :shadow => 'low', :value => 105 }, 400 ]
    chart.add :series            , "veh 3", [ { :shadow => 'low', :label => '115, 600\r(best)', :value => 115 }, 600 ]
    chart.add :series            , "veh 4", [ { :shadow => 'low', :value => 85 }, 650 ]
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
  
  def load_scatter_2
    chart = Ziya::Charts::Scatter.new( LICENSE, "scatter_2_chart" )
    chart.add :axis_category_text, %w[x y]*18
    chart.add :series, "player 1",
      [ { :shadow => 'low', :value => 11 }, 9, 12, 8, 13, 9, 14, 8, 15, 8, 19, 7, 17, 8, 18, 8, 20, 7, 11, 8, 12, 9, 13, 9, 14, 9, 15, 8, 15, 9, 15, 9, 16, 8, 21, 6 ]
    chart.add :series, "player 2",      
      [ { :shadow => 'low', :value => 11 }, 8, 12, 7, 13, 7, 14, 7, 15, 7, 16, 5, 17, 5, 18, 4, 20, 3, 11, 7, 12, 7, 13, 6, 14, 6, 15, 5, 15, 5, 15, 6, 16, 6, 16, 4 ]
    chart.add :theme , "galeria"
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
end

