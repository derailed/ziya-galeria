require 'chronic'

class ProdSchedReport
  def self.time_series
     %w[concept design engineering QA marketing]
  end
  
  def self.day_of_year( date_str )
    date = Chronic.parse( date_str ).yday        
  end
  
  def self.date_to_pixel( date_str )
    chart_x      = 100
    chart_width  = 275
    days_in_year = 365.0
    chart_x + (day_of_year( date_str )/days_in_year)*chart_width
  end
   
  def self.value_labels
    %w[JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC]
  end
  
  def self.annotations
    [
      { :x => ProdSchedReport.date_to_pixel( 'Jul 1 2009'), :y_offset => 0 , :label => 'Alpha' },
      { :x => ProdSchedReport.date_to_pixel( 'Aug 1 2009'), :y_offset => 15, :label => 'Beta' },
      { :x => ProdSchedReport.date_to_pixel( 'Sep 1 2009'), :y_offset => 30, :label => 'Shipping date\rSep 1' }
    ]
  end
  
  def self.series_for( area )
    case area
      when 'lo'
        [ 
          day_of_year( 'Feb 1 2009' ),
          day_of_year( 'Feb 15 2009' ),
          day_of_year( 'Apr 1 2009' ),
          day_of_year( 'May 1 2009' ),
          day_of_year( 'Jun 1 2009' )
        ]     
      when 'hi'
        [ 
          { :shadow => 'high', :value => day_of_year( 'Apr 15 2009' ) },
          { :shadow => 'high', :value => day_of_year( 'Jun 1 2009' )  }, 
          { :shadow => 'high', :value => day_of_year( 'Sep 1 2009' )}, 
          { :shadow => 'high', :value => day_of_year( 'Sep 1 2009' )  },
          { :shadow => 'high', :value => day_of_year( 'Dec 1 2009' ) }
        ]
      end   
  end 
end