class BandwidthReport
  def self.time_series
     %w[12:00 11:00 10:00 9:00 8:00 7:00 6:00 5:00 4:00 3:00 2:00 1:00 12:00 11:00 10:00 9:00 8:00 7:00 6:00 5:00 4:00 3:00 2:00 1:00]
  end
    
  def self.day_of_week( day )
    case day
      when 'MON' : 'Monday'
      when 'TUE' : 'Tuesday'
      when 'WED' : 'Wednesday'
      when 'THU' : 'Thursday'
      when 'FRI' : 'Friday'
      when 'SAT' : 'Saturday'
      when 'SUN' : 'Sunday'      
    end
  end
  
  def self.report_for( day )
    case day
      when "MON"
        [ 8, 15, 17, 25, 30, 27, 32, 35, 40, 45, 42, 40, 40, 30, 25, 23, 20, 25, 28, 26, 28, 20, 15, 9, 6 ]      
      when "TUE"
        [ 18, 35, 40, 60, 70, 85, 90, 95, 92, 90, 85, 80, 85, 87, 85, 80, 75, 76, 73, 70, 62, 45, 32, 12 ]
      when "WED"
        [ 9, 15, 16, 35, 55, 65, 80, 81, 82, 83, 75, 70, 65, 70, 65, 70, 65, 67, 60, 55, 53, 53, 51, 50, 40, 30 ]      
      when "THU"
        [ 9, 15, 16, 35, 55, 65, 80, 81, 82, 83, 75, 70, 65, 70, 65, 70, 65, 67, 60, 55, 53, 53, 51, 50, 40, 30 ]      
      when "FRI"
        [ 9, 15, 16, 35, 55, 65, 80, 81, 82, 83, 75, 70, 65, 70, 65, 70, 65, 67, 60, 55, 53, 53, 51, 50, 40, 30 ]      
      when "SAT"
        [ 9, 15, 16, 35, 55, 65, 80, 81, 82, 83, 75, 70, 65, 70, 65, 70, 65, 67, 60, 55, 53, 53, 51, 50, 40, 30 ]      
      when "SUN"
        [ 6, 11, 13, 20, 23, 27, 30, 31, 30, 27, 26, 25, 27, 26, 23, 21, 22, 21, 20, 17, 11, 7, 4 ]
    end
  end
end