require 'color'

class UsMapReport
  
  def self.color_ranges
    ranges = {}
    color  = Color::RGB.from_html( 'acdefe' )
    min    = 0
    max    = 0
    
    (1..10).each do |i|
      max = 10*i      
      min = max - 10
      max -= 1
      color = color.darken_by( 90 )
      ranges["#{min} - #{max}"] = color.html.gsub( /#/, '' )
    end
    ranges
  end
  
  def self.map_data
    data = {}
    states = { 
      :AL => 'Alabama',
      :AK => 'Alaska',
      :AZ => 'Arizona',
      :AR => 'Arkansas',
      :CA => 'California',
      :CO => 'Colorado',
      :CT => 'Connecticut', 
      :DE => 'Delaware',
      :DC => 'District Of Columnbia',
      :FL => 'Florida',
      :GA => 'Georgia',
      :HI => 'Hawaii',
      :ID => 'Idaho',
      :IL => 'Illinois',
      :IN => 'Indiana',
      :IA => 'Iowa',
      :KS => 'Kansas',
      :KY => 'Kentucky',
      :LA => 'Louisiana',
      :ME => 'Maine',
      :MD => 'Maryland',
      :MA => 'Massachusetts',
      :MI => 'Michigan',
      :MN => 'Minnesota',
      :MS => 'Mississippi',
      :MO => 'Missouri',
      :MT => 'Montana',
      :NE => 'Nebraska',
      :NV => 'Nevada',
      :NH => 'New Hampshire',
      :NJ => 'New Jersey',
      :NM => 'New Mexico',
      :NY => 'New York',
      :NC => 'North Carolina',
      :ND => 'North Dakota',
      :OH => 'Ohio',
      :OK => 'Oklahoma',
      :OR => 'Oregon',
      :PA => 'Pennsylvania',
      :RI => 'Rhode Island',
      :SC => 'South Carolina',
      :SD => 'South Dakota',
      :TN => 'Tennessee',
      :TX => 'Texas',
      :UT => 'Utah',
      :VT => 'Vermont',
      :VA => 'Virgina',
      :WA => 'Washington',
      :WV => 'West Virginia',
      :WI => 'Wisconsin',
      :WY => 'Wyoming'
    }
    states.each_pair do |id, name|
      value    = rand(99)
      data[id] = { 
        :name   => name, 
        :hover  => "ZiYa users [#{value}]", 
        :url    => "javascript:window.alert( \"Hoy! You have clicked on #{name}\");",
        :data   => value }
    end
    data
  end
end