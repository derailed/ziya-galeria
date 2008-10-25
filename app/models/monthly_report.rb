class MonthlyReport
  class << self  
    
    def time_series
      (1..31).to_a
    end
  
    def report_for_region( region, month )
      case region
        when "Region A"
          [ 10, 12, 11, 15, 20, 22, 21, 30, 31, 32, 28, 29, 40, 41, 45, 50, 65, 45, 50, 51, 65, 60, 62, 65, 45, 44, 59, 52, 53, 40, 45 ]
        when "Region B"
          [ 30, 32, 35, 40, 42, 35, 36, 31, 35, 36, 40, 42, 40, 41, 45, 40, 38, 36, 30, 29, 28, 25, 28, 29, 30, 30, 32, 33, 34, 30, 20 ]
      end
    end
  end
end