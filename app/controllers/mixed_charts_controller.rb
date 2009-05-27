class MixedChartsController < ApplicationController
    
  def load_mixed_charts
    render :update do |page|
      page.replace_html :workspace, :partial => "mixed_charts"
    end
  end
  
  def load_mixed_chart_1
    chart = Ziya::Charts::Mixed.new( LICENSE, "mixed_chart_1" )
    chart.add :chart_types       , %w[column column column line]
    chart.add :axis_category_text, NetGrowthReport.time_series
    chart.add :series            , "region 1"  , NetGrowthReport.report_for_region( "region 1" )
    chart.add :series            , "region 2"  , NetGrowthReport.report_for_region( "region 2" )
    chart.add :series            , "region 3"  , NetGrowthReport.report_for_region( "region 3" )
    chart.add :series            , "region 4"  , NetGrowthReport.report_for_region( "region 4" )        
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

  def load_mixed_chart_2
    chart = Ziya::Charts::Mixed.new( LICENSE, "mixed_chart_2" )
    chart.add :chart_types       , %w[area column]
    chart.add :axis_category_text, SalesReport.time_series
    chart.add :series            , "projected sales", SalesReport.report_for_area( "projected" )
    chart.add :series            , "actual sales"   , SalesReport.report_for_area( "actual" )
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

end