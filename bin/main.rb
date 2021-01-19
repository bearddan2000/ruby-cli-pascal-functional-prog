#!/usr/bin/env ruby

def row(k, i, c)
  if k > i
    return;
  end
  printf( "%d, " % c);
  a = c * (i-k)/(k+1);
  return row(k+1, i, a);
end

def col(i, n)
  if i > n
    return;
  end
  row(0, i, 1);
  puts("");
  return col(i+1, n);
end

def main
  input = 10;
  puts( "[INPUT] %d" % input);
  puts( "[OUTPUT] ");
  col(0, input);
end
main
