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
  vector<lower=0>[N_tilde] E_petal_length_tilde
    = alpha + beta * petal_width_tilde;
  vector<lower=0>[N_tilde] petal_length_tilde
    = to_vector(normal_rng(E_petal_length_tilde, sigma));
}
