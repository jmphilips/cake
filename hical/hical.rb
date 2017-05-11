# Your company built an in-house calendar tool called HiCal. You want to add a feature to see the times in a day when everyone is available.
# To do this, you’ll need to know when any team is having a meeting. In HiCal, a meeting is stored as arrays ↴ of integers [start_time, end_time].
# These integers represent the number of 30-minute blocks past 9:00am.

# For example:

#   [2, 3] # meeting from 10:00 – 10:30 am
# [6, 9] # meeting from 12:00 – 1:30 pm

# Write a function merge_ranges() that takes an array of meeting time ranges and returns an array of condensed ranges.

# For example, given:

#   [ [0, 1], [3, 5], [4, 8], [10, 12], [9, 10] ]

# your function would return:

#   [ [0, 1], [3, 8], [9, 12] ]

class Hical

  def initialize(meeting)
    @meetings = [meeting]
  end

  def add_meeting(meeting)
    @meetings << meeting
  end

  def sort_meetings
    @sorted_meetings = @meetings.sort
  end

  def merge_meetings
    @merged_meetings = [@sorted_meetings[0]]

    @sorted_meetings[1..-1].each do |current_meeting_start, current_meeting_end|

      last_meeting_merged_start, last_meeting_merged_end = @merged_meetings[-1]

      if current_meeting_start <= last_meeting_merged_end
        @merged_meetings[-1] = [last_meeting_merged_start, [last_meeting_merged_end, current_meeting_end].max]
      else
        @merged_meetings.push([current_meeting_start, current_meeting_end])
      end

    end
    @merged_meetings
  end

end