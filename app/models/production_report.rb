class ProductionReport
  class << self
    def time_series
      %w[2003 Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec 2004 Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec 2005 Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec 2006 Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec 2007 Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec 2008]
    end
    
    def report_for_region( region )
      case region
        when "Region A"
          [ 5, 6, 5, 7, 10, 11, 10, 12, 15, 16, 28, 29, 40, 41, 45, 50, 65, 45, 50, 51, 65, 60, 62, 65, 45, 55, 59, 52, 53, 40, 45, 32, 35, 40, 42, 35, 36, 31, 35, 36, 40, 42, 40, 38, 40, 40, 38, 36, 30, 29, 28, 25, 28, 29, 30, 60, 32, 33, 34, 30, 32 ]
        when "Region B"
          [ 15, 15, 17, 20, 21, 17, 18, 15, 17, 18, 20, 21, 20, 19, 20, 20, 38, 36, 30, 29, 28, 25, 28, 29, 30, 40, 32, 33, 34, 30, 35, 12, 11, 15, 20, 22, 21, 25, 31, 32, 28, 29, 40, 41, 45, 50, 45, 45, 50, 51, 60, 60, 62, 65, 45, 55, 59, 52, 53, 40, 40 ]
        when "Region subA"
          [ { :shadow => 'data', :value => 5 }, 6, 5, 7, 10, 11, 10, 12, 15, 16, 28, 29, 40, 41, 45, 50, 65, 45, 50, 51, 65, 60, 62, 65, 45, 55, 59, 52, 53, 40, 45, 32, 35, 40, 42, 35, 36, 31, 35, 36, 40, 42, 40, 38, 40, 40, 38, 36, 30, 29, 28, 25, 28, 29, 30, 60, 32, 33, 34, 30, 32 ]
        when "Region subB"
          [ { :shadow => 'data', :value => 15 }, 15, 17, 20, 21, 17, 18, 15, 17, 18, 20, 21, 20, 19, 20, 20, 38, 36, 30, 29, 28, 25, 28, 29, 30, 40, 32, 33, 34, 30, 35, 12, 11, 15, 20, 22, 21, 25, 31, 32, 28, 29, 40, 41, 45, 50, 45, 45, 50, 51, 60, 60, 62, 65, 45, 55, 59, 52, 53, 40, 40 ]          
      end 
    end
  end
end







