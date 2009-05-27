class ColumnThreedsController < ApplicationController
  
  def load_column_threeds
    render :update do |page|
      page.replace_html :workspace, :partial => "column_threed"
    end
  end
  
  def load_column_threed_1
    chart = Ziya::Charts::ColumnThreed.new( LICENSE, "column_threed_1_chart" )
    chart.add :axis_category_text, %w[2006 2007 2008]
    chart.add :series, "region 1", [ 50, 70, 110 ]
    chart.add :series, "region 2", [ 25, 50, 90 ]
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

  def load_column_threed_2
    chart = Ziya::Charts::ColumnThreed.new( LICENSE, "column_threed_2_chart" )
    chart.add :axis_category_text, %w[S M T W T F S]
    chart.add :series, "Region 1", [ 70, 60, 11, 15, 20, 22, 21 ]
    chart.add :series, "Region 2", [ 30, 32, 35, 80, 84, 70, 36 ]
    chart.add :user_data, :url, update_column_threed_2_url
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
  
  def update_column_threed_2
    chart = Ziya::Charts::ColumnThreed.new( LICENSE, "column_threed_2_update_chart" )
    chart.add :axis_category_text, %w[S M T W T F S]
    chart.add :series, "Region 1", [ rand(70), rand(60), rand(11), rand(15), rand(20), rand(22), rand(21) ]
    chart.add :series, "Region 2", [ rand(30), rand(32), rand(35), rand(80), rand(84), rand(70), rand(36) ]
    chart.add :user_data, :url, update_column_threed_2_url
    chart.add :mode, Ziya::Charts::Base.data_only # do not style just use designated style sheet    
    chart.add :theme, "galeria"

    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end    
  end

end