data{
  int N;
  real y[N];
  real<lower=0> sigma;
  real a;
  real b;
}
parameters{
  real theta;
}
model{
  target+=normal_lpdf(y|theta, sigma);
  target+=uniform_lpdf(theta|a,b );
}
