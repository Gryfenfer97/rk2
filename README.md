# Runge-Kutta 2

A simple haskell module to compute differential equations with Runge-Kutta.

## How to use 

```hs
*Main> rk2 f x0 y0 xf step
```

For the function y' = f(x, y) = 0.2*x*y with y(1) = 2 and a step of 0.05  
We compute y(1.5)

```hs
*Main> rk2 (\x y -> 0.2*x*y) 1 2 1.5 0.005
```
