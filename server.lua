-- Specify the words to look for in the logs
local keyWords = {"Oversized"}

-- Specify the path and filename for the output text file
local outputFile = "Oversized_assets.txt"

-- Function to check if a string contains any of the key words
local function containsKeyWord(str)
    for _, word in ipairs(keyWords) do
        if string.find(str, word, 1, true) then
            return true
        end
    end
    return false
end

-- Function to handle console output
local function handleConsoleOutput(channel, message)
    if containsKeyWord(message) then
        -- Append the log line to the output file
        local file = io.open(outputFile, "a")
        if file then
            file:write(message .. "\n")
            file:close()
        end
    end
end

-- Register the console listener
RegisterConsoleListener(handleConsoleOutput)
