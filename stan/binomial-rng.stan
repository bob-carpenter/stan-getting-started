data {
  int<lower=0> N;
  real<lower=0, upper=1> theta;
}
generated quantities {
  int<lower=0, upper=N> y = binomial_rng(N, theta);
}
