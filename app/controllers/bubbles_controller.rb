class BubblesController < ApplicationController
    
  def load_bubbles
    render :update do |page|
      page.replace_html :workspace, :partial => "bubble"
    end
  end
  
  def load_bubble_1
    chart = Ziya::Charts::Bubble.new( LICENSE, "bubble_1_chart" )
    chart.add :axis_category_text, PollenReport.time_series
    chart.add :series, "Spring"  , PollenReport.report_for_season( "Spring" )
    chart.add :series, "Fall"    , PollenReport.report_for_season( "Winter" )
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

  def load_bubble_2
    chart = Ziya::Charts::Bubble.new( LICENSE, "bubble_2_chart" )
    chart.add :axis_category_text, RevenueReport.time_series_for_promotion
    chart.add :series, "Spring", RevenueReport.report_for_season( "Spring" )
    chart.add :series, "Summer", RevenueReport.report_for_season( "Summer" )
    chart.add :series, "Fall", RevenueReport.report_for_season( "Fall" )
    chart.add :series, "Winter", RevenueReport.report_for_season( "Winter" )        
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

end