module UserTypeHelper
	
	def admin_privilige?
		current_user.UserType.id == 1
	end
	
	def manager_privilige?
		current_user.UserType.id == 2
	end
	
	def front_desk_privilige?
		current_user.UserType.id == 3
	end
	
	def house_keeping_privilige?
		current_user.UserType.id == 4
	end
	
	def kitchen_staff_privilige?
		current_user.UserType.id == 5
	end
	
	def maintenance_privilige?
		current_user.UserType.id == 6
	end
	
	def guest_privilige?
		current_user.UserType.id == 7
	end
end
