# Modified from http://alvinalexander.com/blog/post/ruby/calculating-pi-with-ruby
#
# ruby pi - how to calculate pi with ruby.
# proving that pi is the limit of this series:
# 4/1 - 4/3 + 4/5 - 4/7 + 4/9 ...
#
def gimme_pi(n)
  num, den = 4.0, 1
  plus = true
  pi = 0
  while den < n
    if plus
      pi = pi + num/den
    else
      pi = pi - num/den
    end
    plus = not plus
    den = den + 2
  end
  pi
end

gimme_pi 1
# => 0
gimme_pi 10
# => 3.3396825396825403
gimme_pi 100
# => 3.121594652591011
gimme_pi 1_000
# => 3.139592655589785
gimme_pi 10_000
# => 3.141392653591791
gimme_pi 100_000
# => 3.1415726535897814
gimme_pi 1_000_000
# => 3.141590653589692
gimme_pi 10_000_000
# => 3.1415924535897797
gimme_pi 100_000_000
# => 3.1415926335902506
