function writeln(text)
    x,y = m.getCursorPos()
    m.write(text)
    m.setCursorPos(x,y + 1)
end

m = peripheral.wrap("monitor_0")
m.setTextScale(0.5)
m.setBackgroundColor(colors.blue)
m.clear()
m.setCursorPos(1,1)
writeln("1")
writeln("2")
writeln("3")
writeln("4")
writeln("5")
writeln("6")
writeln("7")
writeln("8")
writeln("9")
writeln("10")
writeln("11")
writeln("12")

--dis code succs.
--yes.
