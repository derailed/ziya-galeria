class SoundReport
  class << self
    
    def time_series
      categs = []
      50.times { |i| categs << "" }
      categs[24] = { :value => "", :note => "Test 1" }
      categs[40] = { :value => "", :note => "Test 2 " }
      categs
    end
    
    def report_for_region( region )
      case region
        when "Region A"
          [ { :shadow => 'low', :value => 10 }, 12, 11, 15, 20, 22, 21, 25, 31, 32, 28, 29, 40, 41, 45, 50, 65, 45, 50, 51, 65, 60, 62, 65, 45, 55, 59, 52, 53, 40, 45, 32, 35, 40, 42, 35, 36, 31, 35, 36, 40, 42, 40, 38, 40, 40, 38, 36, 30, 29 ]
        when "Region B"
          [ { :shadow => 'high', :value => 30 }, 32, 35, 40, 42, 35, 36, 31, 35, 36, 40, 42, 40, 38, 40, 40, 38, 36, 30, 29, 28, 25, 28, 29, 30, 40, 32, 33, 34, 30, 35, 12, 11, 15, 20, 22, 21, 25, 31, 32, 28, 29, 40, 41, 45, 50, 45, 45, 50, 51 ]
        end
    end
  end
end