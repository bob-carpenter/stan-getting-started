data {
  int<lower=0> K;
  array[K] int<lower=0> trials;
  array[K] int<lower=0> successes;
  real<lower=0> alpha;  
  real<lower=0> beta;  
}
parameters {
  array[K] real<lower=0, upper=1> theta;
}
model {
  successes ~ binomial(trials, theta);
  theta ~ beta(alpha, beta);
}
generated quantities {
  array[K] int<lower=0, upper=1> is_best;
  for (k in 1:K) {
    is_best[k] = theta[k] == max(theta);
  }
}
