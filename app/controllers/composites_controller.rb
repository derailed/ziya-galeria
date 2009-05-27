require_dependency 'bandwidth_report'
require_dependency 'bi_annual_report'

class CompositesController < ApplicationController
    
  def load_composites
    render :update do |page|
      page.replace_html :workspace, :partial => "composites"
    end
  end

  # load the first composite chart  
  def load_composite_1
    chart = Ziya::Charts::ColumnThreed.new( LICENSE, "comp_column_threed_chart" )
    chart.add :axis_category_text , BiAnnualReport.time_series
    chart.add :series, "Product 1", BiAnnualReport.report_for_product( 'Product 1' )
    chart.add :series, "Product 2", BiAnnualReport.report_for_product( 'Product 2' )
    chart.add :composites         , { 'pie' => { :url => load_composite_pie_url } }
    chart.add :theme              , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

  # load the pie chart composite embedded in the composite_1 chart
  def load_composite_pie
    chart = Ziya::Charts::PieThreed.new( LICENSE, "comp_pie_threed_chart" )
    chart.add :axis_category_text, %w[US UK India Japan China]
    chart.add :series            , "Region 1", [ 50, 70, 55, 60, 30 ]
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

  # load the second composite chart
  def load_composite_2
    day = "FRI"
    chart = Ziya::Charts::Bar.new( LICENSE, "comp_bar_1_chart" )
    chart.add :axis_category_text, %w[SUN MON TUE WED THU FRI SAT]
    chart.add :series            , "Region 1", [ 30, 35, 95, 90, 80, 65, 55 ]
    chart.add :composites        , { 'bar' => { :url => load_composite_bar_url( day ), :transition => 'slide_left', :duration => 1 } }
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
    
  # load the bar chart embedded in the second composite chart
  def load_composite_bar
    day = params[:day]
    chart = Ziya::Charts::Bar.new( LICENSE, "comp_bar_chart" )
    chart.add :axis_category_text, BandwidthReport.time_series
    chart.add :series            , "Region 1", BandwidthReport.report_for( day )
    chart.add :user_data         , :day, BandwidthReport.day_of_week( day )
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
  
  # refresh the bar chart when user clicks
  def refresh_composite_bar
    day = params[:category]    
    chart = Ziya::Charts::Bar.new( LICENSE, "comp_bar_1_chart" )
    chart.add :axis_category_text, %w[SUN MON TUE WED THU FRI SAT]
    chart.add :series            , "Region 1", [ 30, 35, 95, 90, 80, 65, 55 ]
    chart.add :composites        , { 'bar' => { :url => load_composite_bar_url( day ), :transition => 'slide_left', :duration => 1 } }
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end

  end

end