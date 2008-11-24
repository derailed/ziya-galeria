class NetGrowthReport
  class << self
    def time_series
       %w[2005 2006 2007 2008]
    end
    
    def report_for_region( region )
      case region
        when "region 1"
          [ 
            { :shadow => 'high', :bevel => 'bevel1', :value => 20 },
            { :shadow => 'high', :bevel => 'bevel1', :value => 30 },
            { :shadow => 'high', :bevel => 'bevel1', :value => 90 },
            { :shadow => 'high', :bevel => 'bevel1', :value => 50 }
          ]
        when "region 2"
          [ 
            { :shadow => 'high', :bevel => 'bevel1', :value => 40 }, 
            { :shadow => 'high', :bevel => 'bevel1', :value => 50 },
            { :shadow => 'high', :bevel => 'bevel1', :value => 120 },
            { :shadow => 'high', :bevel => 'bevel1', :value => 140 }
          ]
        when "region 3"
          [ 
            { :shadow => 'high', :bevel => 'bevel1', :value => 30 }, 
            { :shadow => 'high', :bevel => 'bevel1', :value => 60 },
            { :shadow => 'high', :bevel => 'bevel1', :value => 30 },
            { :shadow => 'high', :bevel => 'bevel1', :value => 90 }
         ]
       when "region 4"
         [
            { :bevel => 'bevel1', :value => 30 }, 
            46, 
            80, 
            93
         ]
      end
    end
  end
end