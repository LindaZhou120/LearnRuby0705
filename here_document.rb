#!/usr/bin/ruby -w
#coding = utf-8

print <<EOF

EOF

=begin
print <<"EOF"
  I said foo.
EOF
=end

print <<'EOC'
    echo hi here
    echo lo there
EOC


print <<"foo", <<"bar"
    I said foo.
foo
    I said bar. 
bar



END {
  puts "stop ruby progress"
}


puts "its main ruby progress"

BEGIN {
  puts "init ruby progress"
}


print <<'EOC'
  ls -al
  ps -a
EOC







