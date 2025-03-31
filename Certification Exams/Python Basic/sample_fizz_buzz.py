# asked to print instead of return

def fizz_buzz(n):
    
    for i in range(1, n + 1):
        result = ""
        
        if i % 3 == 0:
            result += "Fizz"
        if i % 5 == 0:
            result += "Buzz"
        if result:
            print(result)
        else:
            print(i)
