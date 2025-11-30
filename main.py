import struct
import sys

FILE = 'libc.so'

def list_native_functions(filename):
  with open(filename, 'rb') as f:
    e_ident = f.read(16)
 
    if e_ident[:4] != b'\x7fELF':
      print("Not an ELF file")
      sys.exit(1)

    print("ELF file confirmed")

    is_64bit = (e_ident[4] == 2)
    is_little_endian = (e_ident[5] == 1)

    print(is_64bit)
    print(is_little_endian)

if __name__ == '__main__':
  # list_native_functions(sys.argv[1])
  list_native_functions(FILE)
