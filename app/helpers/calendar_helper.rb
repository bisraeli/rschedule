module CalendarHelper
  def date_display
    return unless @dates
    from = @dates.first.value
    to = @dates.size > 1 ? @dates.last.value : nil
    
    from_display = from.strftime("%b %d")
    from_display << from.strftime(", %Y") unless to && from.year == to.year
    to_display = ""
    if to
      to_display << to.strftime("%b ") unless from.month == to.month
      to_display << to.strftime("%d, %Y")
    end
    "#{from_display} - #{to_display}"
  end
  
  def event_time(start_time, end_time)
    "#{time_format(start_time)} - #{time_format(end_time)}"
  end
  
  def time_format(time)
    time.strftime("%I:%M%p").downcase
  end
end