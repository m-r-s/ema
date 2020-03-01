function y = calcorr(f, x)
% Calibration error of the orignial measurement setup
frequencies = [0.0 100.0 200.0 300.0 400.0 500.0 600.0 700.0 800.0 900.0 1000.0 1100.0 1200.0 1300.0 1400.0 1500.0 1600.0 1700.0 1800.0 1900.0 2000.0 2100.0 2200.0 2300.0 2400.0 2500.0 2600.0 2700.0 2800.0 2900.0 3000.0 3100.0 3200.0 3300.0 3400.0 3500.0 3600.0 3700.0 3800.0 3900.0 4000.0 4100.0 4200.0 4300.0 4400.0 4500.0 4600.0 4700.0 4800.0 4900.0 5000.0 5100.0 5200.0 5300.0 5400.0 5500.0 5600.0 5700.0 5800.0 5900.0 6000.0 6100.0 6200.0 6300.0 6400.0 6500.0 6600.0 6700.0 6800.0 6900.0 7000.0 7100.0 7200.0 7300.0 7400.0 7500.0 7600.0 7700.0 7800.0 7900.0 8000.0 8100.0 8200.0 8300.0 8400.0 8500.0 8600.0 8700.0 8800.0 8900.0 9000.0 9100.0 9200.0 9300.0 9400.0 9500.0 9600.0 9700.0 9800.0 9900.0 10000.0 10100.0 10200.0 10300.0 10400.0 10500.0 10600.0 10700.0 10800.0 10900.0 11000.0 11100.0 11200.0 11300.0 11400.0 11500.0 11600.0 11700.0 11800.0 11900.0 12000.0 12100.0 12200.0 12300.0 12400.0 12500.0 12600.0 12700.0 12800.0 12900.0 13000.0 13100.0 13200.0 13300.0 13400.0 13500.0 13600.0 13700.0 13800.0 13900.0 14000.0 14100.0 14200.0 14300.0 14400.0 14500.0 14600.0 14700.0 14800.0 14900.0 15000.0 15100.0 15200.0 15300.0 15400.0 15500.0 15600.0 15700.0 15800.0 15900.0 16000.0 16100.0 16200.0 16300.0 16400.0 16500.0 16600.0 16700.0 16800.0 16900.0 17000.0 17100.0 17200.0 17300.0 17400.0 17500.0 17600.0 17700.0 17800.0 17900.0 18000.0 18100.0 18200.0 18300.0 18400.0 18500.0 18600.0 18700.0 18800.0 18900.0 19000.0 19100.0 19200.0 19300.0 19400.0 19500.0 19600.0 19700.0 19800.0 19900.0 20000.0];
values = [-10.7 -11.2 -11.5 -11.6 -11.6 -11.5 -11.3 -10.9 -10.4 -9.9 -9.4 -8.8 -8.0 -6.8 -5.5 -4.5 -3.9 -3.8 -4.0 -4.4 -4.8 -5.2 -5.8 -6.3 -6.7 -7.0 -7.1 -7.0 -6.9 -6.7 -6.6 -6.4 -6.1 -5.7 -5.3 -4.9 -4.5 -4.2 -3.8 -3.5 -3.2 -2.9 -2.5 -2.2 -1.9 -1.6 -1.3 -1.0 -0.7 -0.5 -0.4 -0.3 -0.2 -0.2 -0.2 -0.1 -0.1 -0.0 0.0 0.0 0.1 0.1 0.1 0.1 0.1 0.0 -0.1 -0.1 -0.2 -0.3 -0.4 -0.4 -0.5 -0.6 -0.7 -0.7 -0.8 -0.9 -1.0 -1.0 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.1 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.2 -1.3 -1.3 -1.3 -1.3 -1.3 -1.3 -1.3 -1.3 -1.3 -1.3 -1.3 -1.3 -1.3 -1.3 -1.3 -1.3 -1.3 -1.3 -1.4 -1.4 -1.4 -1.4 -1.4 -1.4 -1.4 -1.4 -1.4 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.6 -1.6 -1.6 -1.6 -1.7];
y = x+interp1(frequencies,values,f,'linear','extrap');
end
