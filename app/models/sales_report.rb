class SalesReport
  class << self
    def time_series
       %w[Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec]
    end
    
    def report_for_area( area )
      case area
        when "projected"
          [ 
            { :shadow => 'low', :value => 20 }, 
            30, 
            35, 
            37, 
            40, 
            40, 
            37, 
            35, 
            40, 
            60, 
            70, 
            85            
          ]
        when "actual"
          [ 
            { :shadow => 'low', :value => 20 },
            { :shadow => 'low', :value => 25 },
            { :shadow => 'low', :value => 30 },
            { :shadow => 'low', :value => 45 },
            { :shadow => 'low', :value => 60 },
            { :shadow => 'low', :value => 65 },
            { :shadow => 'low', :value => 50 },
            { :shadow => 'low', :value => 60 },
            { :shadow => 'low', :value => 55 },
            { :shadow => 'low', :value => 65 },
            { :shadow => 'low', :value => 70 },
            { :shadow => 'low', :value => 75 }
          ]
      end
    end
  end
end