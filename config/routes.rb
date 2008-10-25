ActionController::Routing::Routes.draw do |map|
  map.root :controller => "home"

  charts = %w[line column bar pie bubble donut area polar scatter image_column]
  
  charts.each do |chart|
    map.send( "load_#{chart}s", "/#{chart}s/load_#{chart}s", 
     :controller => "#{chart}s", 
     :action     => "load_#{chart}s" )    
    (1..2).each do |i|
      map.send( "#{chart}_#{i}_chart", "/#{chart}s/#{chart}_#{i}_chart", 
       :controller => "#{chart}s", 
       :action     => "load_#{chart}_#{i}" )
    end
  end

  # Pie 3D
  map.update_pie "/pies/update_pie_2", 
   :controller => "pies", 
   :action     => "update_pie_2"
  
  # Stacked Cols
  map.update_stacked_column_2 "/stacked_columns/update_stacked_column_2", 
   :controller => "stacked_columns", 
   :action     => "update_stacked_column_2"

  # 3D Cols
  map.update_column_threed_2 "/column_threeds/update_column_threed_2", 
   :controller => "column_threeds", 
   :action     => "update_column_threed_2"
    
  # Lines
  map.load_line_4 "/lines/load_line4_chart", :controller => "lines", :action => "load_line_4"
  
  # Gauges
  map.load_gauges 'gauges/load_gauges', 
   :controller => 'gauges', 
   :action     => 'load_gauges'    
  
  map.load_thermo 'gauges/load_thermo', 
   :controller => 'gauges', 
   :action     => 'load_thermo'    
  
  # signal
  map.load_signal 'gauges/load_signal', 
   :controller => 'gauges', 
   :action     => 'load_signal'

  map.load_mixed 'mixed/load_gauges', 
   :controller => 'mixed', 
   :action     => 'load_gauges'    
     
  # mini meters
  map.load_minimeters 'mixed/load_minimeters', 
   :controller => 'mixed',
   :action     => 'load_minimeters'

  # compass
  map.load_compass 'mixed/load_compass', 
   :controller => 'mixed',
   :action     => 'load_compass'
   
  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
