--Rock Paper Scissors
local playing = true

-- Repeat the game unitl !playing
repeat 
    print("1.Rock\n2.Paper\n3.Scissors")
    io.write("Input Choice: ")
    local choice = tonumber(io.read())
    local result = ''

    --Convert choices to Player options
    if choice == 1 then
        result = 'Rock'
    elseif choice == 2 then
        result = 'Paper'
    elseif choice == 3 then
        result = 'Scissors'
    else
        io.write("\nWarning no options")
        playing = true
    end

    --Computer Selects Options
    math.randomseed(os.time())
    CompChoice = math.random(1,3)
    CompResult = ''

    --Convert random number to Computer options

    if CompChoice == 1 then
        CompResult = 'Rock'
    elseif CompChoice == 2 then
        CompResult = 'Paper'
    elseif CompChoice == 3 then
        CompResult = 'Scissors'
    end

    --WIN, LOSE or DRAW
    if choice == 1 then
        if CompChoice == 1 then
            print("\nYour Choice    : ",result)
            print("\nComputer Choice: ", CompResult)
            print("\nResult: --DRAW--")
        elseif CompChoice == 2 then
            print("\nYour Choice    : ",result)
            print("\nComputer Choice: ", CompResult)
            print("\nResult: --YOU WIN--")
        elseif CompChoice == 3 then
            print("\nYour Choice    : ",result)
            print("\nComputer Choice: ", CompResult)
            print("\nResult: --YOU LOSE--")
        end
    elseif choice == 2 then
        if CompChoice == 1 then
            print("\nYour Choice    : ",result)
            print("\nComputer Choice: ", CompResult)
            print("\nResult: --YOU LOSE--")
        elseif CompChoice == 2 then
            print("\nYour Choice    : ",result)
            print("\nComputer Choice: ", CompResult)
            print("\nResult: --DRAW--")
        elseif CompChoice == 3 then
            print("\nYour Choice    : ",result)
            print("\nComputer Choice: ", CompResult)
            print("\nResult: --YOU WIN--")
        end
    elseif choice == 3 then
        if CompChoice == 1 then
            print("\nYour Choice    : ",result)
            print("\nComputer Choice: ", CompResult)
            print("\nResult: --YOU LOSE--")
        elseif CompChoice == 2 then
            print("\nYour Choice    : ",result)
            print("\nComputer Choice: ", CompResult)
            print("\nResult: --YOU WIN--")
        elseif CompChoice == 3 then
            print("\nYour Choice    : ",result)
            print("\nComputer Choice: ", CompResult)
            print("\nResult: --DRAW--")
        end
    end

    --Next chance to play
    io.write('Play Again?(y/n): ')
    local restart = io.read()
    if restart == 'y' or restart == 'Y' then
        print('=============================\n')
        playing = true
    elseif restart == 'n' or restart == 'N' then
        playing = false
    else
        playing = false
    end
until playing == false