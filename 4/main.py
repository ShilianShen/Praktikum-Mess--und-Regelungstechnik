import numpy as np

l = 600e-3 # m
R = 5e-3 # m
d = 20e-3 # m
epsilon_r = 1
epsilon_0 = 8.854e-12 # As/Vm

C = (np.pi * epsilon_0 * epsilon_r * l) / np.arccosh(d/(2*R))
L = 100e-6 # H
f = 1/(2*np.pi*np.sqrt(L * C))
print(C)

print(f)

