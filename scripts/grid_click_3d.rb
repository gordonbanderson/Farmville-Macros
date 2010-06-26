start_x = ARGV[0].to_i
start_y = ARGV[1].to_i
n_rows = ARGV[2].to_i-1
n_cols = ARGV[3].to_i-1
click = ARGV[4].to_i

YSCALE=20
XSCALE=40

for x in 0..n_rows
  for y in 0..n_cols
    xm=start_x+(x+y)*40
    ym=start_y+(x-y)*20
    puts "MotionNotify #{xm} #{ym}"
    if click == 1
      puts "ButtonPress 1"
      puts "ButtonRelease 1"
    end
  end
end