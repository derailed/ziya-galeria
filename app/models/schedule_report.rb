class ScheduleReport
  def self.time_series
    %w[Sue Mark Joe Kim Bob]
  end
        
  def self.value_labels
    %w[12\ram 1 2 3 4 5 6 7 8 9 10 11 12\rpm 1 2 3 4 5 6 7 8 9 10 11 12\ram]
  end
  
  def self.series_for( area )
    case area
      when "hi"
        [ 
          { :shadow => 'high', :label => '8:00 am', :value => 8 },
          { :shadow => 'high', :label => '4:00 pm', :value => 16 },
          { :shadow => 'high', :label => '4:00 pm', :value => 16 },
          { :shadow => 'high', :label => '4:00 pm', :value => 16 },
          { :shadow => 'high', :label => '12:00 am', :value => 24 }
        ]
      when "lo"
        [ 
          { :label => '12:00 am', :value => 0 },
          { :label => '8:00 am', :value => 8 },
          { :label => '8:00 am', :value => 8 },
          { :label => '8:00 am', :value => 8 }, 
          { :label => '4:00 pm', :value => 16 }
        ]        
    end
  end
end