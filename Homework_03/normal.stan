data{
  int N;
  real y[N];
  real<lower=0> sigma;
  real mu;
  real<lower=0> tau;
}
parameters{
  real theta;
}
model{
  target+=normal_lpdf(y|theta, sigma);
  target+=normal_lpdf(theta|mu, tau );
}
