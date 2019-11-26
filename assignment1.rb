def fibs(number)
    fib = [0, 1]
    number.times do 
        fib << (fib[-1] + fib[-2])
    end

    return fib
end