#!/usr/bin/env ruby

ENV["TZ"] = "America/Chicago"

checks = [
  {
    :input => 'Thu Oct 21 18:04:33 2021 +0100',
    :expect => '
epoch seconds : 1634835873
epoch ms      : 1634835873000
system time   : 2021-10-21T12:04:33.000-05:00
ts local time : 2021-10-21T18:04:33.000+01:00
utc time      : 2021-10-21T17:04:33.000+00:00
',
  }
]

checks.each do |c|
  got = `./timeparse "#{c[:input]}"`
  if ! $?.success?
    $stderr.puts("#{c[:input]} error #{$?}, #{got}")
    exit 1
  end
  expect = c[:expect].strip
  got = got.strip

  if got != expect
    $stderr.puts("#{c[:input]} error got:\n#{got}\n\nexpect:\n#{expect}")
    exit 1
  end

end

puts "ok"
