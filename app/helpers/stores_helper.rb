module StoresHelper
	
	def open(store)
		@store = store
		time = Time.new
		week = ["sunday","monday","tuesday","wednesday","thursday","friday","saturday"]
		current_day = week[time.wday]
		current_time  = (time.hour*60)+time.min
		if @store["#{current_day}_open"] < current_time && @store["#{current_day}_close"] > current_time
				return true
			else
				return false
		end
	end

	def timeleft(store)
		@store = store
		time = Time.new
		week = ["sunday","monday","tuesday","wednesday","thursday","friday","saturday"]
		current_day = week[time.wday]
		current_time  = (time.hour*60)+time.min
		minutesleft = @store["#{current_day}_close"] - current_time
		distance_of_time_in_words(time, time + minutesleft.minutes)
	end
end
