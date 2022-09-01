small_file = open('injectable.txt','r')
long_file = open('ips1.txt','r')

try:
  small_lines = small_file.readlines()
  long_lines = long_file.readlines()
  small_lines_cleaned = [line.rstrip().lower() for line in small_lines]
  long_file_lines = long_file.readlines()
  long_lines_cleaned = [line.rstrip().lower() for line in long_lines]

  output_file = open('injectable.txt','w')
  for line in small_lines_cleaned:
     if line not in long_lines_cleaned:
        output_file.writelines(line + '\n')
  output_file.close()

finally:
  small_file.close()
  long_file.close()