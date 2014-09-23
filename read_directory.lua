--
--A silly function I wrote over the summer to grab the names of the files in my music directory
--and put them in a table for data manipulation later.
--All CDs start with a single digit number (track number), followed by a space
--and then single word title.
--Takes in a text file generated from using the ">" operator in cmd/terminal with ls/dir
--
function parse(directory)
    file = assert(io.open(directory, "r"))
    local parsedDirectory = {}
    for line in file:lines() do
        --pattern match here
        if string.match(line, "[0-9]%s[A-Z][a-z]+") then --ex. 1 Example
            local filename = string.match(line, "[0-9]%s[A-Z][a-z].-$")
            table.insert(parsedDirectory, filename)
        end
    end

    file:close()
    table.sort(parsedDirectory)
    return parsedDirectory
end
