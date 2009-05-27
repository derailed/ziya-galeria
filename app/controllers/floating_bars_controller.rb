require_dependency 'prod_sched_report'
require_dependency 'schedule_report'

class FloatingBarsController < ApplicationController
  
  def load_floating_bars
    render :update do |page|
      page.replace_html :workspace, :partial => "floating_bar"
    end
  end

  def load_floating_bar_1
    chart = Ziya::Charts::FloatingBar.new( LICENSE, "floating_bar_1_chart" )
    chart.add :axis_category_text, ProdSchedReport.time_series
    chart.add :axis_value_label  , ProdSchedReport.value_labels
    chart.add :series            , "hi", ProdSchedReport.series_for( 'hi' )
    chart.add :series            , "lo", ProdSchedReport.series_for( 'lo' )    
    chart.add :user_data         , :annotations, ProdSchedReport.annotations
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
    
  def load_floating_bar_2
    chart = Ziya::Charts::FloatingBar.new( LICENSE, "floating_bar_2_chart" )
    chart.add :axis_category_text, ScheduleReport.time_series
    chart.add :axis_value_label  , ScheduleReport.value_labels    
    chart.add :series            , "hi", ScheduleReport.series_for( 'hi' )
    chart.add :series            , "lo", ScheduleReport.series_for( 'lo' )    
    chart.add :theme             , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
end

