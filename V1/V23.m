num = [1]
den1 = [1/3, 2/3/sqrt(3), 1]
den2 = [1/4, 2/3/sqrt(4), 1]
den3 = [1/6, 2/3/sqrt(6), 1]

sys1 = tf(num, den1)
sys2 = tf(num, den2)
sys3 = tf(num, den3)

figure
step(sys1, sys2, sys3)
legend("1", "2", "3")
grid on

figure
bode(sys1, sys2, sys3)
legend("1", "2", "3")
grid on

figure
pzmap(sys1, sys2, sys3)
legend("1", "2", "3")
grid on