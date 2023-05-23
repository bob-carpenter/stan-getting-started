data {
  int<lower=0> D;
}
transformed data {
  array[D] real one_D = rep_array(1, D);
}
generated quantities {
  array[D] real y = uniform_rng(-1, one_D);
  int<lower=0, upper=1> inside = norm2(y) < 1;
}