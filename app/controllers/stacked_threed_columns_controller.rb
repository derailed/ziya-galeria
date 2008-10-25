class StackedThreedColumnsController < ApplicationController
  
  def index
  end
  
  def load_stacked_threed_columns
    render :update do |page|
      page.replace_html :chart_type, @title
      page.replace_html :workspace, :partial => "stacked_threed_column"
    end
  end
  
  def load_stacked_threed_column_1
    chart = Ziya::Charts::StackedThreedColumn.new( LICENSE, "column_stacked_threed_1_chart" )
    chart.add :axis_category_text, %w[2006 2007 2008]
    chart.add :series, "Region 1", [50, 70, 110]
    chart.add :series, "Region 1", [35, 50, 90]    
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

  def load_stacked_threed_column_2
    chart = Ziya::Charts::StackedThreedColumn.new( LICENSE, "column_stacked_threed_2_chart" )
    chart.add :axis_category_text, %w[S M T W T F S]
    chart.add :series, "Region 1", [ 22, 15, 11, 15, 20, 22, 21 ]
    chart.add :series, "Region 2", [ 15, 20, 15, 17, 25, 12, 11 ]
    chart.add :series, "Region 3", [ 30, 32, 35, 20, 30, 30, 36 ]
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

end