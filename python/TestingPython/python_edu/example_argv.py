
from subprocess import Popen, PIPE

p = Popen('dir', stdout=PIPE)
p.wait()

filelist = p.stdout.read()
print filelist
