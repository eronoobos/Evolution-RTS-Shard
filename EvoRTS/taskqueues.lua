--[[
Task Queues!
]]--

math.randomseed( os.time() )
math.random(); math.random(); math.random()

local function AirOrLand()
	local r = math.random(0,3)
	if r == 0 then
			return "ebasefactory"
		elseif r == 1 then
			return "eairplant"
		elseif r == 2 then
			return "eamphibfac"
		else 
			return "eminifac"
	end
end

local function Destroyer()
	return "eexperimentalfac"
end

local function StartFactory()
	local r = math.random(0,3)
	if r == 0 then
			return "ebasefactory"
		elseif r == 1 then
			return "eairplant"
		elseif r == 2 then
			return "eamphibfac"
		else 
			return "eminifac"
	end
end


local factory = {
   "eengineer5",
   "eengineer5",
   "elighttank3",
   "elighttank3",
   "elighttank3",
   "elighttank3",
   "elighttank3",
   "eriottank2",
   "eriottank2",
   "eheavytank3",
   "eheavytank3",
   "eheavytank3",
   "eheavytank3",
   "eheavytank3",
   "emissiletank",
   "emissiletank",
   "emissiletank",
   "emissiletank",
   "emissiletank",
   "emissiletank",
   "emissiletank",
   "eartytank",
   "eartytank",
}

local firstEngineer = {
   "emetalextractor",
   "emetalextractor",
   "emetalextractor",
   "emetalextractor",
   "emetalextractor",
   StartFactory,
   "esolar2",
   "esolar2",
   "esolar2",
   "elightturret2",
   "esolar2",
   "esolar2",
   "elightturret2",
   "esolar2",
   "esolar2",
   "emetalextractor",
   "emetalextractor",
   "emetalextractor",
   "esolar2",
   "esolar2",
   "esolar2",
   "esolar2",
   "esolar2",
   "elightturret2",
   "esolar2",
   "efusion2",
   "emetalextractor",
   "emetalextractor",
   "emetalextractor",
   "emetalextractor",
   "esolar2",
   "esolar2",
   "emetalextractor",
   "emetalextractor",
   "emetalextractor",
   "elightturret2",
   "emetalextractor",
   AirOrLand,
   "emetalextractor",
   "esolar2",
   "emetalextractor",
   "ejammer2",
   "estorage",
   "emetalextractor",
   "emetalextractor",
   "estorage",
   "emetalextractor",
   "emetalextractor",
   "elightturret2",
   
   "eheavyturret2",

   "efusion2",
}

local engineers = {
   "emetalextractor",
   "emetalextractor",
   "emetalextractor",
   "esolar2",
   "emetalextractor",
   "elightturret2",
   "emetalextractor",
   "emetalextractor",
   "elightturret2",

   "efusion2",
   AirOrLand,
   "emetalextractor",
   "emetalextractor",
   "emetalextractor",
   "esolar2",
   "elightturret2",
   "emetalextractor",
   "esolar2",
   "emetalextractor",
   
   "emetalextractor",
   "esolar2",
   "emetalextractor",
   "elightturret2",
   "emetalextractor",
   "emetalextractor",
   "elightturret2",
   "esolar2",
   "emetalextractor",
   "ejammer2",
   "esolar2",
   "elightturret2",
   "elrpc",
   "efusion2",
   "eheavyturret2",

   "efusion2",

   "efusion2",
   "esolar2",
   "emetalextractor",
   "emetalextractor",
   "eheavyturret2",
   "estorage",
   "emetalextractor",
   "emetalextractor",
   "eheavyturret2",
   "estorage",
   "estorage",

   "efusion2",
   Destroyer,
}

local airplant = {
   "eairengineer",
   "egunship2",
   "egunship2",
   "egunship2",
   "egunship2",
   "efighter",
   "efighter",
   "ebomber",
   "ebomber",
}

local amphibfactory = {
   "eamphibengineer",
   "eamphibengineer",
   { action="wait",frames=64},
   "eamphibbuggy",
   "eamphibbuggy",
   "eamphibbuggy",
   "eamphibbuggy",
   "eamphibbuggy",
   "eamphibriot",
   "eamphibriot",
   "eamphibmedtank",
   "eamphibmedtank",
   "eamphibmedtank",
   "eamphibrock",
   "eamphibrock",
   "eamphibrock",
   "eamphibrock",
   "eamphibrock",
   "eamphibrock",
   "eamphibarty",
   "eamphibarty",
}

local allterrfactory = {
   "eallterrengineer",
   "eallterrengineer",
   "eallterrlight",
   "eallterrlight",
   "eallterrlight",
   "eallterrlight",
   "eallterrlight",
   "eallterrriot",
   "eallterrriot",
   "eallterrmed",
   "eallterrmed",
   "eallterrmed",
   "eallterrmed",
   "eallterrheavy",
   "eallterrheavy",
   "eallterrheavy",
   "eallterrheavy",
   "eallterrheavy",
   "eallterrheavy",
   "eallterrassault",
}

local destroyerfactory = {
   "eexkrabgroth",
   "eextankdestroyer",
   "eexnukearty",
}

local function engineerlist(beh)
   if ai.engineerfirst == true then
      return engineers
   else
      ai.engineerfirst = true
      return firstEngineer
   end
end

taskqueues = {
   ecommander = engineerlist,
   ebasefactory = factory,
   eengineer5 = engineerlist,
   eallterrengineer = engineerlist,
   eamphibengineer = engineerlist,
   eairengineer = engineerlist,
   eairplant = airplant,
   eamphibfac = amphibfactory,
   eminifac = allterrfactory,
   eexperimentalfac = destroyerfactory,
   
}
