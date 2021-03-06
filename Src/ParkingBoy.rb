require '../Src/ParkingLot'
require '../Src/ParkingException'


class ParkingBoy
    
	def initialize()
		@parkingLots=Array.new
	end
	
	def AddParkingLot(lot)
		@parkingLots[@parkingLots.length]=lot
	end
	
	def Parkable?
		@parkingLots.each {|parkingLot| if parkingLot.Parkable? then return true end}
		false
	end
	
	def Park car
		parkingLot = findParkingLot
		if !parkingLot.nil? then return parkingLot.Park car end
		nil
	end
	
	def findParkingLot
	    @parkingLots.each {|parkingLot| if parkingLot.Parkable? then return parkingLot end}
		nil
	end
	def Unpark ticket
		@parkingLots.each {|parkingLot| if parkingLot.ValidTicket? ticket then return parkingLot.Unpark ticket end}
		nil
	end

end