name = input("What is your name?\n")
print(f"Hello, {name}!")
status = input("how are you doing today?\n")

if status == "good" or status == "fine":
    print(f"glad to hear you {status} {name}")
elif status == "sick" or status == "bad":
    print(f"get well soon {name}")