data {
  int<lower=0> M;
  real<lower=0, upper=1> rho;  // prob of staying in same state
}
generated quantities {
  array[M] int<lower=0, upper=1> y;  // Markov chain
  y[1] = bernoulli_rng(0.5);
  for (m in 2:M) {
    if (y[m - 1] == 1) {
      y[m] = bernoulli_rng(rho);
    } else {
      y[m] = bernoulli_rng(1 - rho);
    }
  } 
}
