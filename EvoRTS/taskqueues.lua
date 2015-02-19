--[[
Task Queues!
]]--

math.randomseed( os.time() )
math.random(); math.random(); math.random()

local function AirOrLand()
	local r = math.random(0,3)
	if r == 0 then
			return "eairplantai"
		elseif r == 1 then
			return "ebasefactoryai"
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
			return "eairplantai"
		elseif r == 1 then
			return "ebasefactoryai"
		elseif r == 2 then
			return "eamphibfacai"
		else 
			return "eminifacai"
	end
end


local factory = {
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
   "eengineer5ai",
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
   AirOrLand,
   "eorbai",
   "emetalextractorai",
   "esolar2ai",
   "emetalextractorai",
   "esolar2ai",
   "emetalextractorai",
   "estorageai",
   "emetalextractorai",
   "esolar2ai",
   "emetalextractorai",
   "estorageai",
   "elightturret2ai",
   "eorbai",
   "emetalextractorai",
   "emetalextractorai",
   "esolar2ai",
   "emetalextractorai",
   "esolar2ai",
   "emetalextractorai",
   "estorageai",
   "emetalextractorai",
   "esolar2ai",
   "emetalextractorai",
   "estorageai",
   "eheavyturret2ai",
   "eorbai",
   "emetalextractorai",
   "emineai",
   "emetalextractorai",
   "emineai",
   "esolar2ai",
   "emetalextractorai",
   "emineai",
   "esolar2ai",
   "emetalextractorai",
   "emineai",
   "estorageai",
   "emetalextractorai",
   "emineai",
   "esolar2ai",
   "emetalextractorai",
   "emineai",
   "estorageai",
   "eheavyturret2ai",
   "emineai",
   "ecruisesiloai",
}

local engineers = {
   "emetalextractorai",
   "emetalextractorai",
   "esolar2ai",
   "emetalextractorai",
   "esolar2ai",
   "emetalextractorai",
   "estorageai",
   "emetalextractorai",
   "esolar2ai",
   "emetalextractorai",
   "estorageai",
   "elightturret2ai",
   AirOrLand,
   "eorbai",
   "emetalextractorai",
   "emineai",
   "emetalextractorai",
   "emineai",
   "esolar2ai",
   "emetalextractorai",
   "emineai",
   "esolar2ai",
   "emetalextractorai",
   "emineai",
   "estorageai",
   "emetalextractorai",
   "emineai",
   "esolar2ai",
   "emetalextractorai",
   "emineai",
   "estorageai",
   "emineai",
   "eheavyturret2ai",
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
	"eamphibengineerai",
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
   "eallterrengineerai",
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
