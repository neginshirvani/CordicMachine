import math

def CordicIteration(n, theta):
    """ n is the number of float bits and theta is the angle in cordic circular mode """
    counter = 0
    while abs(theta) > (2 ** (-n)) :
        if theta >= 0:
            theta -= math.degrees(math.atan(2 ** (-counter)))
        else:
            theta += math.degrees(math.atan(2 ** (-counter)))
        counter += 1
    print ("number of iterations: ", counter + 1)
    return counter
    
def printarctan(n, theta):
    iteratenumber = CordicIteration(n,theta)
    
    for i in range(iteratenumber):
        print("arctan(2^-i): ", str(math.degrees(math.atan(2 ** -i)))) #compute the arctan(2 ^ -i) --> angle
         
        print("---------------------------")
    

if __name__ == "__main__":
    """ tedad bit ashar ro mishe bishtar kard vali az 6 b bala dg hamash arctanesh 0 mishe dg pas hamoon 6ta bit ba 12ta iterate kafie"""
    printarctan(6, 30)
    #print("-------------------------------")
    #printarctan(8, 30)
    #print("-------------------------------")
    #printarctan(10, 30)
    #print("-------------------------------")
    #printarctan(12, 30)


    