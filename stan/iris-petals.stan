data {
  int<lower=0> N;
  vector<lower=0>[N] petal_width;
  vector<lower=0>[N] petal_length;
}
parameters {
  real alpha;
  real beta;
  real<lower=0> sigma;
}
model {
  petal_length ~ normal(alpha + beta * petal_width, sigma);
  alpha ~ normal(0, 5);
  beta ~ normal(0, 5);
  sigma ~ lognormal(0, 1);
}
