import concurrent.futures

def inverse_modulo(a, m):
    with concurrent.futures.ThreadPoolExecutor() as executor:
        future_results = []
        for x in range(m):
            future_results.append(executor.submit(check_value, a, m, x))
        for future in concurrent.futures.as_completed(future_results):
            if future.result() is not None:
                return future.result()

def check_value(a, m, x):
    if (a * x) % m == 1:
        return x

# Exemplo de uso
a = 271823414147654531428
m = 323243431415941341343141
result = inverse_modulo(a, m)
print(result)