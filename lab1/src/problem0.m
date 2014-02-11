format short e
answer = [
binocdf(10,100,0.3),
normcdf(10,100,0.3),
expcdf(10,0.9),
binocdf(15,100,0.3,'upper'),
normcdf(15,100,0.3,'upper'),
expcdf(15,0.9,'upper'),
binocdf(10,100,0.3) - binocdf(7,100,0.3),
normcdf(10,100,0.3) - normcdf(7,100,0.3),
expcdf(10,0.9) - expcdf(7,0.9)]
