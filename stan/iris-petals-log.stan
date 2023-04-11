data {
  int<lower=0> N;
  vector<lower=0>[N] petal_width;
  vector<lower=0>[N] petal_length;
}
transformed data {
  vector[N] log_petal_width = log(petal_width);
}
parameters {
  real alpha;
  real beta;
  real<lower=0> sigma;
}
model {
  petal_length ~ lognormal(alpha + beta * log_petal_width, sigma);
  alpha ~ normal(0, 3);
  beta ~ normal(0, 3);
  sigma ~ lognormal(0, 0.6);
}
