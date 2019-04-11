real = load('real.txt');
expect = load('expect.txt');

real_ia = real(:,1);
real_ib = real(:,2);
real_ic = real(:,3);
expect_ia = expect(:,1);
expect_ib = expect(:,2);
expect_ic = expect(:,3);

plot(real_ia);
plot(real_ib);
plot(real_ic);

plot(expect_ia);
plot(expect_ib);
plot(expect_ic);


