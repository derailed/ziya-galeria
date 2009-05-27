class MapsController < ApplicationController

  def load_maps
    render :update do |page|
      page.replace_html :workspace, :partial => "maps"
    end
  end

  def load_map_1
    map = Ziya::Maps::Us.new
    map.add :series      , UsMapReport.map_data
    map.add :range_colors, UsMapReport.color_ranges
    map.add :theme       , 'galeria'
    
    respond_to do |fmt|
      fmt.xml { render :xml => map.to_xml }
    end    
  end

  def load_map_2
    map = Ziya::Maps::World.new
    map.add :points      , WorldMapReport.points
    map.add :point_colors, WorldMapReport.point_ranges
    map.add :arcs        , WorldMapReport.arcs
    map.add :arc_colors  , WorldMapReport.arc_ranges
    map.add :theme       , 'galeria'
    
    respond_to do |fmt|
      fmt.xml { render :xml => map.to_xml }
    end    
  end
  
end