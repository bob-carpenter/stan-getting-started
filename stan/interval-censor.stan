data {
  int<lower=0> B;
  int<lower=0> N;
  vector[N] y;
}
parameters {
  real<lower=-B, upper=B> mu;
  real<lower=0> sigma;
}
model {
  y ~ normal(mu, sigma);
}
