z_score <- function(mean, std, value){
  return((value-mean)/std)
}

findX <- function(mean, std, zscore){
  return((std*zscore)+mean)
}

#find zscores for X
inputs = c(104,132,92,100,120)
for (i in inputs){
  print(z_score(100, 16, i))
}

#find X for zscores
zscores = c(0.4, 1, -3, 2.8, 0.4, 1.4)
for(z in zscores){
  print(findX(25,5,z))
}

