class LinesController < ApplicationController
  
  def load_lines
    render :update do |page|
      page.replace_html :workspace, :partial => "line"
    end
  end
  
  def load_line_1
    chart = Ziya::Charts::Line.new( LICENSE, "line_1_chart" )
    chart.add :axis_category_text, AnnualReport.time_series
    chart.add :series            , "region 1", AnnualReport.report_for_region( "region 1" )
    chart.add :series            , "region 2", AnnualReport.report_for_region( "region 2" )
    chart.add :series            , 'region 3', AnnualReport.report_for_region( "region 3" )
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
  
  def load_line_2
    chart = Ziya::Charts::Line.new( LICENSE, "line_3_chart" )
    chart.add :axis_category_text, ProductionReport.time_series
    chart.add :series            , "Region A", ProductionReport.report_for_region( "Region A" )
    chart.add :series            , "Region B", ProductionReport.report_for_region( "Region B" )
    chart.add :composites        , { :line4 => { :url => load_line_4_url } }
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end    
  end
  
  def load_line_4
    chart = Ziya::Charts::Line.new( LICENSE, "line_4_chart" )
    chart.add :axis_category_text, ProductionReport.time_series
    chart.add :series            , "Region A", ProductionReport.report_for_region( "Region subA" )
    chart.add :series            , "Region B", ProductionReport.report_for_region( "Region subB" )
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end        
  end

end