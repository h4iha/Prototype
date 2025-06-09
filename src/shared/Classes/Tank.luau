local Tank = {}
Tank.__index = Tank

export type Tank = typeof(setmetatable(
	{} :: {
		health: number,
		damage: number,
		speed: number,
	},
	Tank
))

function Tank.new(): Tank
	local self = setmetatable({
		health = 100,
		damage = 10,
		speed = 5,
	}, Tank)

	return self
end

function Tank:hit(damage: number): ()
	self.health -= damage
	print(`Tank was hit for {damage} damage! Health left: {self.health}`)
end

function Tank.speedUp(self: Tank, additionalSpeed: number): ()
	self.speed += additionalSpeed
	print(`Tank was increased more {additionalSpeed} speed`)
end

return Tank
