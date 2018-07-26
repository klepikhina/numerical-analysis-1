function am2 ( f_ode, xRange, yInitial, numSteps )

x(1) = xRange(1);
h = ( xRange(2) - xRange(1) ) / numSteps;
y(:,1) = yInitial;

k = 1;
  fValue =  f_ode( x(k), y(:,k) );
  xhalf = x(k) + 0.5 * h;
  yhalf = y(:,k) + 0.5 * h * fValue;
  fValuehalf = f_ode( xhalf, yhalf );

  x(1,k+1) = x(1,k) + h;
  y(:,k+1) = y(:,k) + h * fValuehalf;

    for k = 2 : numSteps
      fValueold=fValue;
      fValue = f_ode( x(k), y(:,k) );
      x(1,k+1) = x(1,k) + h;
      disp(y)
      y(:,k+1) = y(:,k) + h * (5*f_ode( x(k+1), y(:,k) ) + 8 * fValue - fValueold ) / 12;

    end
    result = [x ;y];
    disp(result)
end
