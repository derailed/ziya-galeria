require 'color'

class WorldMapReport
  
  def self.color_ranges
    { 1 => '0033ff', 2 => '99ff00', 3 => 'ffcc00', 4 => '9900ff'}
  end
  
  def self.arc_ranges
    { 1 => '0033ff', 2 => '99ff00', 3 => 'ffcc00', 4 => '9900ff'}
  end

  def self.point_ranges
    { 1 => '0033ff', 2 => '99ff00', 3 => 'ffcc00', 4 => '9900ff', 5 => 'FFFF99', 6 => 'ff1188' }
  end
  
  def self.map_data
    data    = {}
    regions = { :BE => "Belgium", :FR => "France", :US => "United States", :AS => "Australia" }
    count   = 1
    regions.each_pair do |id, name|
      data[id] = {
        :name   => name, 
        :hover  => "#{name} [#{count}]", 
        :url    => "javascript:window.alert( \"Hoy! You have clicked on #{name}\");",
        :data   => count 
      }
      count += 1
    end
    data
  end
  
  def self.arcs
    { 
      'New York to Los Angeles' => { 
        :start  => Ziya::Maps::Geocode.new( 40.744806, -73.985283 ),
        :stop   => Ziya::Maps::Geocode.new( 34.05000 , -118.25000 ),
        :stroke => 2,
        :data   => 2 
      },
      'New York to London' => { 
        :start  => Ziya::Maps::Geocode.new( 40.744806, -73.985283 ),
        :stop   => Ziya::Maps::Geocode.new( 51.32    , -0.5 ),
        :stroke => 3,
        :data   => 2 
      },
      'New York to Tokyo' => { 
        :start  => Ziya::Maps::Geocode.new( 40.744806, -73.985283 ),
        :stop   => Ziya::Maps::Geocode.new( 36.00000 , 138.00000 ),
        :stroke => 2,
        :data   => 2 
      },
      'New York to Johannesburg' => { 
        :start  => Ziya::Maps::Geocode.new( 40.744806, -73.985283 ),
        :stop   => Ziya::Maps::Geocode.new( -29.00000, 24.00000 ),
        :stroke => 2,
        :data   => 2 
      },            
    }
  end
  
  def self.points
    {
      'New York' => {
        :loc  => Ziya::Maps::Geocode.new( 40.744806, -73.985283 ),
        :data => 1,
        :url  => "javascript:window.alert( \"Hoy! You have clicked on New York City\");",
        :size => 20
      },
      'New York City' => {
        :loc  => Ziya::Maps::Geocode.new( 40.744806, -73.985283 ),
        :url  => "javascript:window.alert( \"Hoy! You have clicked on New York City\");",        
        :data => 2,
        :size => 9
      },
      'Los Angeles' => {
        :loc  => Ziya::Maps::Geocode.new( 34.05000, -118.25000 ),
        :url  => "javascript:window.alert( \"Hoy! You have clicked on Los Angeles\");",        
        :data => 3,
        :size => 9
      },
      'London' => {
        :loc  => Ziya::Maps::Geocode.new( 51.32, -0.5 ),
        :url  => "javascript:window.alert( \"Hoy! You have clicked on London\");",
        :data => 4,
        :size => 9
      },
      'Tokyo' => {
        :loc  => Ziya::Maps::Geocode.new( 36.00000, 138.00000 ),
        :url  => "javascript:window.alert( \"Hoy! You have clicked on Tokyo\");",        
        :data => 5,
        :size => 9
      },
      'Johannesburg' => {
        :loc  => Ziya::Maps::Geocode.new( -29.00000, 24.00000 ),
        :url  => "javascript:window.alert( \"Hoy! You have clicked on Johannesburg\");",        
        :data => 6,
        :size => 9
      }      
    }
  end
end