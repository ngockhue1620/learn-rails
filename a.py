import math
def snt(a):
  if a<2:
    return False
  if a==2:
    return True
  for i in range(2,int(math.sqrt(a)) + 1):
    if a%i ==0:
      return False
  return True
n = input()
a = input()
z = a.split(' ')
sum = 0
for i in z:
  if snt(int(i)):
    sum+=int(i)

print(sum)