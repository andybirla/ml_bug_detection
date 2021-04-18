n = int(input())
array = [int(x) for x in input().split(" ")]
array.sort()
yes = True
for i in range(1,len(array)):
    if (array[i] - array[i-1]) > 1:
        yes = False
if yes:
    print("YES")
else:
    print("NO")
