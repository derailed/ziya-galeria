class PollenReport
  class << self
    def time_series    
      %w[x y z]*4
    end
    
    def report_for_season( season )
      case season
        when "Spring"
          [ { :bevel => 'bevel1', :value => 500 }, 25, 100, 
            { :bevel => 'bevel1', :value => 1780 }, 15, 40, 
            { :bevel => 'bevel1', :value => 1300 }, 30, 25, 
            { :bevel => 'bevel1', :value => 1100 }, 45, 65 ]
        when "Winter"
          [ { :bevel => 'bevel1', :value => 900 }, 30, 50, 
            { :bevel => 'bevel1', :value => 1500 }, 10, 40, 
            { :bevel => 'bevel1', :value => 1300 }, 50, 20, 
            { :bevel => 'bevel1', :value => 1400 }, 25, 20 ]            
        end
      end
   end
end