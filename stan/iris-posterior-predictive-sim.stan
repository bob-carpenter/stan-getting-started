data {
  int<lower=0> N_tilde;
  vector<lower=0>[N_tilde] petal_width_tilde;
}
parameters {
  real alpha;
  real beta;
  real<lower=0> sigma;
}
generated quantities {
  vector<lower=0>[N_tilde] petal_length_sim
    = to_vector(normal_rng(alpha + beta * petal_width_tilde, sigma));
  vector<lower=0>[N_tilde] petal_length_hat
    = alpha + beta * petal_width_tilde;
}
