def inverse_modular(N, x):
    """
    Calculates the inverse modular of N to a given number x.
    
    Args:
    - N: the number to calculate the inverse modular of
    - x: the number to calculate the inverse modular to
    
    Returns:
    - the inverse modular of N to x if it exists, None otherwise
    """
    for i in range(N):
        if (i*x) % N == 1:
            return i
    return None

#N = 314159
#x = 271828
N = 314159265
x = 271828183

inverse = inverse_modular(N, x)

if inverse is not None:
    print("The inverse modular of", N, "to", x, "is", inverse)
else:
    print("There is no inverse modular of", N, "to", x)