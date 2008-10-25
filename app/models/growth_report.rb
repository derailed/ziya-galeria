class GrowthReport
  class << self
    def time_series
      %w[2006 2007 2008]
    end
    
    def report_for_region( region )
      case region
        when "region A"
         [ 
            { :shadow => 'data', :bevel => 'bevel1', :value => -25 },
            { :shadow => 'data', :bevel => 'bevel1', :value => 45 },
            { :shadow => 'data', :bevel => 'bevel1', :value => 100 }      
         ]          
        when "region B"
         [ 
            { :shadow => 'data', :bevel => 'bevel1', :value => 25 },
            { :shadow => 'data', :bevel => 'bevel1', :value => 65 },
            { :shadow => 'data', :bevel => 'bevel1', :value => 80 }
         ]             
        when "region C"
         [ 
            { :shadow => 'data', :bevel => 'bevel1', :value => 15 },
            { :shadow => 'data', :bevel => 'bevel1', :value => 30 },
            { :shadow => 'data', :bevel => 'bevel1', :value => 25 }      
         ]               
      end
    end
  end
end