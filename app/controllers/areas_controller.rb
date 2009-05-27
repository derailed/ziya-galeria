class AreasController < ApplicationController
    
  def load_areas
    render :update do |page|
      page.replace_html :workspace, :partial => "area"
    end
  end

  def load_area_1
    chart = Ziya::Charts::Area.new( LICENSE, "area_1_chart" )
    chart.add :axis_category_text, %w[2004 2005 2006 2007 2008]
    chart.add :series, "Region 1", [ 10, 20, 50, 45, 30 ]
    chart.add :series, "Region 2", [ 35, 45, 70, 75, 90 ]
    chart.add :series, "Region 3", [ 65, 70, 90, 80, 40 ]
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
  
  def load_area_2
    chart = Ziya::Charts::StackedArea.new( LICENSE, "area_2_chart" )
    chart.add :axis_category_text, %w['04 '05 '06 '07 '08]
    chart.add :series, "Region 1", [
      { :line_alpha => '0', :line_color => 'ff4400', :bevel => 'data', :line_thickness => '0', :value => 12 }, 50, 35, 65, 65 ]
    chart.add :series, "Region 2", [      
      { :line_alpha => '0', :line_color => '000000', :bevel => 'data', :line_thickness => '0', :value => 27 }, 30, 60, 80, 65 ]
    chart.add :theme , "galeria"
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
end

