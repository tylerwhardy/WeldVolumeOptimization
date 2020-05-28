function f = weld(x)
%   Function weld.m is called by fmincon
%   Input: Overloaded variable x passed from lesson13problem3.m
%   Input: x(1) = b, x(2) = L
%   Output: f

f = (2*(x(1)^2))*x(2); % Volume of weld

end

