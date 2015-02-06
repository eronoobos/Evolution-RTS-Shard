--[[
Task Queues!
]]--

math.randomseed( os.time() )
math.random(); math.random(); math.random()

local function AirOrLand()
	local r = math.random(0,3)
	if r == 0 then
			return "ebasefactoryai"
		elseif r == 1 then
			return "eairplantai"
		elseif r == 2 then
			return "eamphibfacai"
		else 
			return "eminifacai"
	end
end

local function Destroyer()
	return "eexperimentalfac"
end

local function StartFactory()
	local r = math.random(0,3)
	if r == 0 then
			return "ebasefactoryai"
		elseif r == 1 then
			return "eairplantai"
		elseif r == 2 then
			return "eamphibfacai"
		else 
			return "eminifacai"
	end
end


local factory = {
   "eengineer5ai",
   "eengineer5ai",
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
   "emetalextractorai",
   "emetalextractorai",
   "emetalextractorai",
   "emetalextractorai",
   "emetalextractorai",
   "emetalextractorai",
   "emetalextractorai",
   StartFactory,
   "esolar2",
   "esolar2",
   "esolar2",
   "estorage",
   "estorage",
   "estorage",
   "estorage",
   "elightturret2",
   "ejammer2",
   "esolar2",
   "esolar2",
   "elightturret2",
   "esolar2",
   "esolar2",
   "emetalextractorai",
   "emetalextractorai",
   "emetalextractorai",
   "estorage",
   "estorage",
   "estorage",
   "estorage",
   "esolar2",
   "esolar2",
   "esolar2",
   "esolar2",
   "esolar2",
   "ejammer2",
   "elightturret2",
   "esolar2",
   "efusion2",
   "emetalextractorai",
   "emetalextractorai",
   "emetalextractorai",
   "emetalextractorai",
   "esolar2",
   "esolar2",
   "estorage",
   "estorage",
   "estorage",
   "estorage",
   "emetalextractorai",
   "emetalextractorai",
   "emetalextractorai",
   "elightturret2",
   "emetalextractorai",
   AirOrLand,
   "emetalextractorai",
   "esolar2",
   "emetalextractorai",
   "ejammer2",
   "estorage",
   "emetalextractorai",
   "emetalextractorai",
   "estorage",
   "emetalextractorai",
   "emetalextractorai",
   "elightturret2",
   
   "eheavyturret2",

   "efusion2",
}

local engineers = {
   "emetalextractorai",
   "emetalextractorai",
   "emetalextractorai",
   "esolar2",
   "estorage",
   "estorage",
   "emetalextractorai",
   "elightturret2",
   "emetalextractorai",
   "emetalextractorai",
   "elightturret2",
   "ejammer2",
   "estorage",
   "estorage",
   "efusion2",
   AirOrLand,
   "emetalextractorai",
   "emetalextractorai",
   "emetalextractorai",
   "esolar2",
   "elightturret2",
   "emetalextractorai",
   "esolar2",
   "emetalextractorai",
   "ejammer2",
   "emetalextractorai",
   "esolar2",
   "emetalextractorai",
   "elightturret2",
   "emetalextractorai",
   "emetalextractorai",
   "elightturret2",
   "esolar2",
   "emetalextractorai",
   "ejammer2",
   "esolar2",
   "elightturret2",
   "elrpc",
   "efusion2",
   "eheavyturret2",
	"ejammer2",
   "efusion2",

   "efusion2",
   "esolar2",
   "emetalextractorai",
   "emetalextractorai",
   "eheavyturret2",
   "estorage",
   "emetalextractorai",
   "emetalextractorai",
   "eheavyturret2",
   "estorage",
   "estorage",
	"ejammer2",
   "efusion2",
   Destroyer,
}

local airplant = {
   "eairengineerai",
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
   "eamphibengineerai",
   "eamphibengineerai",
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
   "eallterrengineerai",
   "eallterrengineerai",
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
   ecommanderai = engineerlist,
   ebasefactoryai = factory,
   eengineer5ai = engineerlist,
   eallterrengineerai = engineerlist,
   eamphibengineerai = engineerlist,
   eairengineerai = engineerlist,
   eairplantai = airplant,
   eamphibfacai = amphibfactory,
   eminifacai = allterrfactory,
   eexperimentalfac = destroyerfactory,
   
}
