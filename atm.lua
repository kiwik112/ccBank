function writeln(text)
    x,y = m.getCursorPos()
    m.write(text)
    m.setCursorPos(x,y + 1)
end

m = peripheral.wrap("monitor_0")
m.setTextScale(1.5)
m.setBackgroundColor(colors.blue)
m.clear()
m.setCursorPos(2,2)
m.write("ATM")

--dis code succs.
--yes.
