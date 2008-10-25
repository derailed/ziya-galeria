class AnnualReport
  class << self
    def time_series
       %w[2005 2006 2007 2008]
    end
    
    def report_for_region( region )
      case region
        when "region 1"
          [ 
            { :value => 48 , :shadow => 'medium', :tooltip => '$48 Millions' }, 
            { :value => 55, :note => 'Ad Campaign', :tooltip => '$55 Millions' },
            { :value => 80, :tooltip => '$80 Millions' }, 
            { :value => 100, :tooltip => '$100 Millions' } 
          ]
        when "region 2"
          [ 
            { :value => -12, :shadow => 'low', :tooltip => '$-12 Millions' }, 
            { :value => 10, :tooltip => '$10 Millions' }, 
            { :value => 55, :tooltip => '$55 Millions' },
            { :value => 65, :tooltip => '$65 Millions' }
          ]
        when "region 3"
          [ 
            { :value => 27 , :shadow => 'low', :tooltip => '$27 Millions' }, 
            { :value => -20, :tooltip => '$-20 Millions' },
            { :value => 15, :tooltip => '$15 Millions' },
            { :value => 80, :tooltip => '$80 Millions'}
          ]
      end
    end
  end
end