import numpy as np
def fft(x):
	
	N=len(x)
	if N==1:
		return x
	else:
		xe=x[0::2]
		xo=x[1::2]
		wN=np.exp(-1j*np.pi*2*np.arange(0,N/2)/N)
		Xe=fft(xe)
		Xo=fft(xo)
		x=np.append((Xe+wN*Xo),(Xe-wN*Xo))
		return x
x=[1,2,-1,3]
print(fft(x))
