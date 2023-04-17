data {
  int<lower=0> M;
  vector<lower=0>[M] heights;
}
parameters {
  real<lower=0, upper=1> lambda;
  ordered[2] mu;
  vector<lower=0>[2] sigma;
}
model {
  mu ~ normal(170, 10);
  sigma ~ lognormal(log(7), 1);
  for (m in 1:M) {
    real lp1 = bernoulli_lpmf(0 | lambda)
               + normal_lpdf(heights[m] | mu[1], sigma[1]);
    real lp2 = bernoulli_lpmf(1 | lambda)
               + normal_lpdf(heights[m] | mu[2], sigma[2]);
    target += log_sum_exp(lp1, lp2);
  }
}
generated quantities {
  vector<lower=0, upper=1>[10] Pr_female;
  for (m in 1:10) {
    real lp1 = bernoulli_lpmf(0 | lambda)
               + normal_lpdf(heights[m] | mu[1], sigma[1]);
    real lp2 = bernoulli_lpmf(1 | lambda)
               + normal_lpdf(heights[m] | mu[2], sigma[2]);
    Pr_female[m] = exp(lp1 - log_sum_exp(lp1, lp2));
  }
  array[10] int<lower=0, upper=1> sex = bernoulli_rng(Pr_female);
}
