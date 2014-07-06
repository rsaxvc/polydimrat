import math

R = .5
#print "R=",R
#print "n,volBall,volCube,volRat"
for ni in range(0,14):
	n=float(ni)
	n1 = math.pow( math.pi, n / 2 )
	n2 = math.pow( R, n )
	d = math.gamma( n / 2 + 1 )
	volBall = n1 * n2 / d
	volCube = math.pow( 2 * R, n )
#	print n,volBall, volCube, volBall/volCube
	print str(n)+","+str(volBall/volCube)
