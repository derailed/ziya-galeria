class BarsController < ApplicationController
  
  def index
  end
  
  def load_bars
    render :update do |page|
      page.replace_html :chart_type, @title
      page.replace_html :workspace, :partial => "bar"
    end
  end

  def load_bar_1
    chart = Ziya::Charts::Bar.new( LICENSE, "bar_1_chart" )
    chart.add :axis_category_text, %w[maybe no yes]
    chart.add :series, "Region 1", [ 
      { :bevel => 'data', :value => 26 },
      { :bevel => 'data', :value => 21 },
      { :bevel => 'data', :value => 53 } ]
    chart.add :user_data, :url, update_pie_url
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
  
  def load_bar_2
    chart = Ziya::Charts::StackedBar.new( LICENSE, "bar_2_chart" )
    chart.add :axis_category_text, %w[2006 2007 2008]
    chart.add :series, "Region 1", [
      { :shadow => 'high', :bevel => 'data', :value => 15 },
      { :shadow => 'high', :bevel => 'data', :value => 45 },
      { :shadow => 'high', :bevel => 'data', :value => 100 } ]
    chart.add :series, "Region 2", [      
      { :shadow => 'high', :bevel => 'data', :value => 20 },
      { :shadow => 'high', :bevel => 'data', :value => 65 },
      { :shadow => 'high', :bevel => 'data', :value => 35 } ]      
    chart.add :series, "Region 3", [
      { :shadow => 'high', :bevel => 'data', :value => 25 },
      { :shadow => 'high', :bevel => 'data', :value => 20 },
      { :shadow => 'high', :bevel => 'data', :value => 30 } ]          
    chart.add :theme , "galeria"
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
end

