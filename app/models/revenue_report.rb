class RevenueReport 
  class << self
    
    def time_series_for_promotion
      %w[x y z]*3
    end
    
    def time_series
      %w[2006 2007 2008]
    end
    
    def report_for_region( region )
      case region
        when "region A"
          [ { :shadow => 'low', :bevel => 'gray', :value => -20 },
            { :shadow => 'low', :bevel => 'gray', :note => 'Audited', :value => 45 },
            { :shadow => 'low', :bevel => 'gray', :value => 100 } ]
        when "region B"
         [ { :shadow => 'high', :bevel => 'blue', :value => -40 },
           { :shadow => 'high', :bevel => 'blue', :value => 65 },
           { :shadow => 'high', :bevel => 'blue', :value => 80 } ]
      end
    end
    
    def report_for_season( season )
      case season
        when "Spring"
          [ { :bevel => 'bevel1', :value => 2.5 }, 90, 75, 
            { :bevel => 'bevel1', :value => 3 }, 20, 39, 
            { :bevel => 'bevel1', :value => 2.75 }, 50, 50 ]
        when "Summer"
          [ { :bevel => 'bevel1', :value => 3.75 }, 80, 30, 
            { :bevel => 'bevel1', :value => 3.1 }, 50, 40, 
            { :bevel => 'bevel1', :value => 3.5 }, 40, 20 ]
        when "Fall"
          [ { :bevel => 'bevel1', :value => 2.5 }, 40, 35, 
            { :bevel => 'bevel1', :value => 2.95 }, 60, 40, 
            { :bevel => 'bevel1', :value => 3.1 }, 80, 30 ]          
        when "Winter"
          [ { :bevel => 'bevel1', :value => 2.44 }, 60, 18, 
            { :bevel => 'bevel1', :value => 2.75 }, 20, 15, 
            { :bevel => 'bevel1', :value => 2.38 }, 30, 10 ]
      end
    end
  end
end