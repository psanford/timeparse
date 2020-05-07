# timeparse cli tool

timeparse is a little cli tool to parse timestamps in different format.

Its quite common to see timestamps in a bunch of different formats thoughout the day.
One log might have rfc3339 another is8601, some with local timezones some in UTC, some
unix timestamps some unix millisecond timestamps.

This tool tries to take all of those different formats and output in a few standard
formats so you can easily get what you need.

## Examples

```bash
#
$ timeparse now
epoch seconds : 1588876735
epoch ms      : 1588876735755
system time   : 2020-05-07T11:38:55.755-07:00
ts local time : 2020-05-07T11:38:55.755-07:00
utc time      : 2020-05-07T18:38:55.755+00:00

# rfc3339
$ timeparse 2020-05-07T12:39:21.656-06:00
epoch seconds : 1588876761
epoch ms      : 1588876761656
system time   : 2020-05-07T11:39:21.655-07:00
ts local time : 2020-05-07T12:39:21.656-06:00
utc time      : 2020-05-07T18:39:21.656+00:00

# unix epoch seconds
$ timeparse 1588876795
epoch seconds : 1588876795
epoch ms      : 1588876795000
system time   : 2020-05-07T11:39:55.000-07:00
ts local time : 2020-05-07T11:39:55.000-07:00
utc time      : 2020-05-07T18:39:55.000+00:00

# unix epoch milliseconds
$ timeparse 1588876879125
epoch seconds : 1588876879
epoch ms      : 1588876879125
system time   : 2020-05-07T11:41:19.125-07:00
ts local time : 2020-05-07T11:41:19.125-07:00
utc time      : 2020-05-07T18:41:19.125+00:00

# unix epoch microseconds
$ timeparse 1588876879125123
epoch seconds : 1588876879
epoch ms      : 1588876879125
system time   : 2020-05-07T11:41:19.125-07:00
ts local time : 2020-05-07T11:41:19.125-07:00
utc time      : 2020-05-07T18:41:19.125+00:00

# rfc2822
$ timeparse 'Thu, 07 May 2020 18:42:32 +0000'
epoch seconds : 1588876952
epoch ms      : 1588876952000
system time   : 2020-05-07T11:42:32.000-07:00
ts local time : 2020-05-07T18:42:32.000+00:00
utc time      : 2020-05-07T18:42:32.000+00:00

# just utc time
$ timeparse --utc 'Thu, 07 May 2020 18:42:32 +0000'
2020-05-07T18:42:32.000+00:00
```
