-- Miles to Kilometers Converter

-- Function to convert miles to kilometers
local function milesToKilometers(miles)
    return miles * 1.60934
end

-- Interactive loop
while true do
    io.write("Enter distance in miles (or type 'exit' to quit): ")
    local input = io.read()

    if input:lower() == "exit" then
        print("Goodbye!")
        break
    end

    local miles = tonumber(input)
    if miles then
        local km = milesToKilometers(miles)
        print(string.format("%.2f miles is %.2f kilometers.\n", miles, km))
    else
        print("Invalid input. Please enter a number.\n")
    end
end