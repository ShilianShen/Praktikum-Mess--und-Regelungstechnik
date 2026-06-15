num = [1]
den1 = [1/3, 2/3/sqrt(3), 1]
den2 = [1/3, 4/3/sqrt(3), 1]
den3 = [1/3, 2/sqrt(3), 1]
den4 = [1/3, 18/6/sqrt(3), 1]
sys1 = tf(num, den1)
sys2 = tf(num, den2)
sys3 = tf(num, den3)
sys4 = tf(num, den4)

figure
step(sys1, sys2, sys3, sys4)
legend("1", "2", "3", "4")
grid on

figure
bode(sys1, sys2, sys3, sys4)
legend("1", "2", "3", "4")
grid on

figure
pzmap(sys1, sys2, sys3, sys4)
legend("1", "2", "3", "4")
grid on
