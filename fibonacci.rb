def fibs(number)
    fib = [0, 1]
    number.times do 
        fib << (fib[-1] + fib[-2])
    end

    return fib
end

def fibs_rec(n, fibs = [])
  return fibs << 0 if n == 0

  fibs_rec(n - 1, fibs)

  return fibs << 1 if n == 1 || n == 2
  
  fibs << (fibs[-1] + fibs[-2])
end