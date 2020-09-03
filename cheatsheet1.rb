require 'benchmark'

time = Benchmark.realtime do
  csv = data.map { |row| row.join(",") }.join("\n")
end

# disable and enable garbaage collection
GC.disable
GC.enable

# Get rss memory 
puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)
