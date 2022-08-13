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

function main()
    homeScr()
    event, side, xPos, yPos = os.pullEvent("monitor_touch")
    m.clear()
    m.setTextScale(0.5)
    m.setCursorPos(1,1)
    writeln("Please insert")
    writeln("your card.")
    while true do
        i = i + 1
        sleep(1)
        if disk.isPresent("left") then
            break
        end
        if i > 20 then
            return false
        end
    end
    m.clear()
    m.setCursorPos(1,1)
    m.write("Select action.")
    m.setCursorPos(1,3)
    m.setBackgroundColor(colors.red)
    m.write("Withdraw")
    m.setBackgroundColor(colors.green)
    m.write("Deposit")
    event, side, xPos, yPos = os.pullEvent("monitor_touch")
end

function getCard()
    m.clear()
    m.setTextScale(0.5)
    writeln("Please insert")
    writeln("your card.")
    while true do
        i = i + 1
        sleep(1)
        if disk.isPresent("left") then
            return true
        end
        if i > 20 then
            return false
        end
    end
end

m = peripheral.wrap("monitor_0")
i = 0
while main() do

end

m.clear();

--dis code succs.
--yes.
