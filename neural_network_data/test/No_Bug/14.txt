testCases = int(input())
while testCases:
    testCases -= 1
    string = input()        # input is already in string format so no need to type-cast
    halve = len(string) // 2
    if len(string) % 2 == 0:
        if sorted(string[:halve]) == sorted(string[halve:]):
            print('YES')
        else:
            print('NO')
    else:
        if sorted(string[:halve]) == sorted(string[halve + 1:]):
            print('YES')
        else:
            print('NO')
