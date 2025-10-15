gg.alert("😁MagiskGod🔥")

--_______________________-----_____________________--
gg.clearResults()
 gg.processResume()
 gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("18;18;18;15;15;15;5;5;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("5;5;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50)
local m1 = {}
m1 = gg.getResults(9999)


gg.clearResults()
gg.setVisible(false)
  gg.clearResults()
  gg.processResume()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
local m2 = {}
m2 = gg.getResults(9999)
gg.clearResults()

--_______________________-----_____________________--


function flyOn()
gg.clearResults()
 gg.getValues(m1)
gg.loadResults(m1)
gg.getResults(100)
gg.editAll("4", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Fly ON")
end

function flyOff()
gg.clearResults()
  gg.getValues(m1)
gg.loadResults(m1)
gg.getResults(100)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Fly OFF")
end

function w1()
gg.clearResults()
  gg.getValues(m2)
gg.loadResults(m2)
gg.getResults(100)
 gg.editAll("-10.19999980927", gg.TYPE_FLOAT)
  gg.processResume()
  gg.clearResults()
gg.toast("Wall ON")
end

function w2()
gg.clearResults()
 gg.getValues(m2)
gg.loadResults(m2)
gg.getResults(100)
  gg.editAll("0.00999999978", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("Wall OFF")
end

while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    local choice = gg.choice({"🚀Fly ON", "🚀Fly OFF","👻WallOn","👻WallOff", "Exit"}, nil, "🦊Magisk-God Mode🦊")
    if choice == 1 then
      flyOn()
    elseif choice == 2 then
      flyOff()
    elseif choice == 3 then
      w1()
    elseif choice == 4 then
      w2()
    elseif choice == 5 then
      os.exit()
    end
  end
end