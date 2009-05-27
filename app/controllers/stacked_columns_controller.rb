class StackedColumnsController < ApplicationController
    
  def load_stacked_columns
    render :update do |page|
      page.replace_html :workspace, :partial => "stacked_column"
    end
  end
  
    
  def load_stacked_column_1
    chart = Ziya::Charts::StackedColumn.new( LICENSE, "stacked_column_1_chart" )
    chart.add :axis_category_text, GrowthReport.time_series
    chart.add :series            , "region A", GrowthReport.report_for_region( "region A" )
    chart.add :series            , "region B", GrowthReport.report_for_region( "region B" ) 
    chart.add :series            , "region C", GrowthReport.report_for_region( "region C" )
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

  def load_stacked_column_2
    chart = Ziya::Charts::StackedColumn.new( LICENSE, "stacked_column_2_chart" )
    chart.add :axis_category_text, MonthlyReport.time_series
    chart.add :series            , "Region A", MonthlyReport.report_for_region( "Region A", "July 2008" )
    chart.add :series            , "Region B", MonthlyReport.report_for_region( "Region B", "July 2008" )
    chart.add :user_data         , :month, "June 2008"
    chart.add :user_data         , :url, update_stacked_column_2_url      
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

  def update_stacked_column_2
    chart = Ziya::Charts::StackedColumn.new( LICENSE, "stacked_column_2_chart" )
    chart.add :axis_category_text, MonthlyReport.time_series
    chart.add :series            , "Region A", MonthlyReport.report_for_region( "Region A", "June 2008" )
    chart.add :series            , "Region B", MonthlyReport.report_for_region( "Region A", "June 2008" )
    chart.add :user_data         , :month, "July 2008"
    chart.add :user_data         , :url, stacked_column_2_chart_url      
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

end