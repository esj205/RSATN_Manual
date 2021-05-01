data {
  int<lower=0> N; // # obs.
  real y[N];
}

parameters {
  real mu;
  real<lower=0> sigma;
}

model {
  y ~ normal(mu, sigma); //likelihood
}

//���� ������ �����ϰ� ���� �� �ַ� ���
generated quantities{
  real y_pred;
  y_pred = normal_rng(mu, sigma); //rng = random number generate
}

