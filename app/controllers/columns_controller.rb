class ColumnsController < ApplicationController
  
  def index
  end
  
  def load_columns
    render :update do |page|
      page.replace_html :chart_type, @title
      page.replace_html :workspace, :partial => "column"
    end
  end
  
  def load_column_1
    chart = Ziya::Charts::Column.new( LICENSE, "column_1_chart" )
    chart.add :axis_category_text, RevenueReport.time_series
    chart.add :series, "region A", RevenueReport.report_for_region( "region A" )
    chart.add :series, "region B", RevenueReport.report_for_region( "region B" )
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

  def load_column_2
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

  # def load_column_2
  #   chart = Ziya::Charts::Column.new( LICENSE, "column_2_chart" )
  #   chart.add :axis_category_text, MonthlyReport.time_series
  #   chart.add :series, "Region A", MonthlyReport.report_for_region( "Region A",  "July 2008" )
  #   chart.add :series, "Region B", MonthlyReport.report_for_region( "Region B",  "July 2008" )
  #   chart.add :theme , "galeria"
  #   
  #   respond_to do |fmt|
  #     fmt.xml { render :xml => chart.to_xml }
  #   end
  # end

end