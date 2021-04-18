abc = input().split()
testCases, byte = int(abc[0]), abc[1]
string = 'abcdefghijklmnopqrstuvwxyz'
while testCases:
    testCases -= 1
    test = str(input())
    for i in test:
        if i == '_':
            print(" ",end="")
        elif i.isalpha():
            indeX = string.index(i.lower())
            print(byte[indeX].upper() if i.isupper() else byte[indeX],end="")
        else:
            print(i,end="")
    print()
