function writeln(text)
    x,y = m.getCursorPos()
    m.write(text)
    m.setCursorPos(x,y + 1)
end

function homeScr()
    m.setTextScale(1.5)
    m.setBackgroundColor(colors.blue)
    m.clear()
    m.setCursorPos(2,2)
    m.write("ATM")
end

m = peripheral.wrap("monitor_0")

event, side, xPos, yPos = os.pullEvent("monitor_touch")
m.clear()
m.setTextScale(0.5)
m.write("Please insert your card.")
i = 0
while true do
    i = i + 1
    if disk.isPresent("left") do
        break
    end
    if i > 200 do
        homeScr()
    end
end
m.clear();

--dis code succs.
--yes.
