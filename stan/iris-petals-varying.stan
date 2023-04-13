data {
  int<lower=0> N;
  vector<lower=0>[N] petal_width;
  vector<lower=0>[N] petal_length;
  int<lower=0> K;
  array[N] int<lower=1, upper=K> species;
}
transformed data {
  vector[N] log_petal_width = log(petal_width);
}
parameters {
  vector[K] alpha;
  vector[K] beta;
  real<lower=0> sigma;
}
model {
  petal_length ~ lognormal(alpha[species] + beta[species] .* log_petal_width, sigma);
  alpha ~ normal(0, 3);
  beta ~ normal(0, 3);
  sigma ~ lognormal(0, 0.6);
}
