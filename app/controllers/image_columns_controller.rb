class ImageColumnsController < ApplicationController
  
  def load_image_columns
    render :update do |page|
      page.replace_html :workspace, :partial => "image_column"
    end
  end

  def load_image_column_1
    chart = Ziya::Charts::ImageColumn.new( LICENSE, "image_column_1_chart" )
    chart.add :axis_category_text, %w[2006 2007 2008]
    chart.add :series, "Region 1", 
      [ { :shadow => 'high', :value => 70 }, { :shadow => 'high', :value => 50 }, { :shadow => 'high', :value => 100 } ],
      "images/10_dollars.jpg"
    chart.add :theme , "galeria"
    
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
    
  def load_image_column_2
    chart = Ziya::Charts::ImageColumn.new( LICENSE, "image_column_2_chart" )
    chart.add :axis_category_text, %w[2008]
    chart.add :series, "woman", [ 29 ], "images/woman.gif"
    chart.add :series, "man", [ 39 ], "images/man.gif"
    chart.add :theme , "galeria"
    respond_to do |fmt|
      fmt.xml { render :xml => chart.to_xml }
    end
  end
end

