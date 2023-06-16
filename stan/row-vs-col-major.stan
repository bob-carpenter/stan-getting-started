data {
  int<lower=0> N;
  int<lower=0, upper=1> row_major;
}
transformed data {
  matrix[N, N] A;
  for (j in 1:N)
    for (i in 1:N)
      A[i, j] = i;
}  
generated quantities {
  real sum = 0;
  if (row_major)
    for (i in 1:N)
      for (j in 1:N)
        sum += A[i, j];
  else
    for (j in 1:N)
      for (i in 1:N)
        sum += A[i, j];
}
