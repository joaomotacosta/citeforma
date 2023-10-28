import math

public_key_file = open("rsa_public_info.txt", "r")
for line in public_key_file:
    one = line.split("\t")
    nome1 = one[0]
    public1 = int(one[1])
    for line in public_key_file:
        two = line.split("\t")
        nome2 = two[0]
        public2 = int(two[1])
        if nome1 != nome2:
            print("One: ", nome1)
            print("Two: ", nome2)
            gcd = math.gcd(public1, public2)
            if gcd != 1:
                print(gcd)

intercepted_file = open("intercepted.txt", "r")
for line in intercepted_file:
    intercepted = line.split("\t")
    sender = intercepted[0]
    receiver = intercepted[1]
    message = int(intercepted[2])
    print("Received: ",intercepted[1])