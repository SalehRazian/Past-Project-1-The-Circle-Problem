import math
from mpmath import mp

precision = 200
mp.dps = precision

d=1
mc=-4
cc=1
#mc=(math.sin(2*math.pi*0.25))/(math.cos(2*math.pi*0.25)-0.25)
for i in range(40):
    md=(mp.sin(2*mp.pi*(0.25+d)))/(mp.cos(2*mp.pi*(0.25+d))-(0.25+d))
    cd= md*(-(0.25+d))

    x= (cd-cc)/(mc-md)
    print(x)

    d=d/10
y=-4*(0.215674359575396759795)+1

print(y)
