class PiesController < ApplicationController
  
  def index
  end
  
  def load_pies
    render :update do |page|
      page.replace_html :chart_type, @title
      page.replace_html :workspace, :partial => "pie"
    end
  end
  
  def load_pie_1
    chart = Ziya::Charts::Pie.new( LICENSE, "pie_1_chart" )
    chart.add :axis_category_text, %w[2004 2005 2006 2007 2008]
    chart.add :series, "Region 1", [ 
      { :bevel => 'data', :value => 20 },
      { :bevel => 'data', :value => 10 },
      { :glow => 'glow1', :bevel => 'data', :value => 30 },
      { :bevel => 'data', :value => 50 },
      { :bevel => 'data', :value => 40 } ]
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end

  def load_pie_2
    chart = Ziya::Charts::PieThreed.new( LICENSE, "pie_2_chart" )
    chart.add :axis_category_text, %w[Bob Liz Tina Mark Kate]
    chart.add :series, "Region 1", [ 40, 13, 17, 10, 5 ]
    chart.add :user_data, :url, update_pie_url
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
  
  def update_pie_2
    chart = Ziya::Charts::PieThreed.new( LICENSE, "pie_2_update_chart" )
    chart.add :axis_category_text, %w[Bob Liz Tina Mark Kate]
    chart.add :series, "Region 1", [ rand(40), rand(13), rand(17), rand(10), rand(5) ]
    chart.add :user_data, :url, update_pie_url
    chart.add :mode, Ziya::Charts::Base.mode_data # do not style just use designated style sheet        
    chart.add :theme , "galeria"    
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end    
  end

end