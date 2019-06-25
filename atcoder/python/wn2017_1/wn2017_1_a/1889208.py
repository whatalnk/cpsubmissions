# Contest ID: wn2017_1
# Problem ID: wn2017_1_a ( https://atcoder.jp/contests/wn2017_1/tasks/wn2017_1_a )
# Title: A. Satellite data compression
# Language: Python3 (3.4.3)
# Submitted: 2017-12-20 11:46:35 +0000 UTC ( https://atcoder.jp/contests/wn2017_1/submissions/1889208 ) 

import os.path
import struct
from ctypes import *
import io


class fileInfo(Structure):
    _fields_ = (
        ('filename', c_char * 100),
        ('filesize', c_uint32)
    )


def compress():
    UserEncodingFileName = input()
    DirectoryName = input()
    N = int(input())
    fileinfo = []
    for i in range(N):
        filename, filesize = input().split(" ")
        fileinfo.append(fileInfo(filename.encode(), int(filesize)))
    with open(UserEncodingFileName, 'wb') as outputfile:
        outputfile.write(struct.pack('i', N))
        for x in fileinfo:
            outputfile.write(x)
            with open(os.path.join(DirectoryName, x.filename.decode('utf-8')), 'rb') as inputfile:
                data = inputfile.read()
                outputfile.write(data)


def extract():
    UserEncodingFileName = input()
    UnzipDirectoryName = input()
    with open(UserEncodingFileName, "rb") as inputfile:
        N = struct.unpack('i', inputfile.read(sizeof(c_int)))[0]
        for i in range(N):
            x = fileInfo()
            inputfile.readinto(x)
            data = inputfile.read(x.filesize)
            with open(os.path.join(UnzipDirectoryName, x.filename.decode('utf-8')), 'wb') as outputfile:
                outputfile.write(data)


if __name__ == '__main__':
    command = input()
    if command == "encode":
        compress()
    elif command == "decode":
        extract()
