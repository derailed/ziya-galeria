class BiAnnualReport
  class << self
    def time_series
       %w[JAN FEB MAR APR MAY JUN]
    end
    
    def report_for_product( product )
      case product
        when "Product 1"
          [ 
            { :tooltip => '60', :value => 60 }, 
            { :tooltip => '90', :value => 90 }, 
            { :tooltip => '40', :value => 40 }, 
            { :tooltip => '90', :value => 90 }, 
            { :tooltip => '50', :value => 50 }, 
            { :tooltip => '40', :value => 40 } 
          ]
        when "Product 2"
          [
            { :tooltip => '85', :value => 85 }, 
            { :tooltip => '70', :value => 70 }, 
            { :tooltip => '80', :value => 80 }, 
            { :tooltip => '40', :value => 40 }, 
            { :tooltip => '90', :value => 90 }, 
            { :tooltip => '95', :value => 95 }
          ]
      end
    end
  end
end