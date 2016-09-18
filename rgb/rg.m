% MIT License
% 
% Copyright (c) 2016 Olivier Diotte
% 
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
% 
% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.
% 
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

XMAX = 3;
x = linspace(0, XMAX, XMAX*100);

ysin = sin(2*pi/.58*x);
gsin = sin(2*pi/.5325*x);
rsin = sin(2*pi/.68*x);
rgsin = gsin + rsin;
rgsin2 = rgsin ./ max(rgsin);

plot(x, ysin, 'Color', 'yellow', x, gsin, 'Color', 'green', x, rsin, 'Color', 'red', x, rgsin2, '-;red+green;')
xlabel('distance (µm)')
ylabel('normalized amplitude')
ylim([-1.2, 1.2]);
a = 80/255;
whitebg([a a a])
