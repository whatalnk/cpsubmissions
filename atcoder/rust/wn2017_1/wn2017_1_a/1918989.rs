// Contest ID: wn2017_1
// Problem ID: wn2017_1_a ( https://atcoder.jp/contests/wn2017_1/tasks/wn2017_1_a )
// Title: A. Satellite data compression
// Language: Rust (1.15.1)
// Submitted: 2017-12-29 08:14:04 +0000 UTC ( https://atcoder.jp/contests/wn2017_1/submissions/1918989 ) 

use std::io;
use std::io::{Read, Write};
use std::fs::File;
use std::path::Path;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf;
}

struct FileInfo {
    filename: String,
    filesize: usize,
}

fn u32_to_u8(x: u32) -> [u8; 4] {
    return [
        (x >> 24) as u8,
        ((x >> 16) & 255) as u8,
        ((x >> 8) & 255) as u8,
        (x & 255) as u8,
    ];
}

fn u8_to_u32(x: [u8; 4]) -> u32 {
    return ((x[0] as u32) << 24) ^ ((x[1] as u32) << 16) ^ ((x[2] as u32) << 8) ^ (x[3] as u32);
}

fn compress() {
    let line = gets();
    let user_encoding_file_name = line.trim();
    let line = gets();
    let directory_name = line.trim();
    let line = gets();
    let n = line.trim().parse::<usize>().unwrap();
    let mut fileinfos = Vec::new();
    for _ in 0..n {
        let line = gets();
        let mut it = line.trim().split_whitespace();
        let (filename, filesize) = (it.next().unwrap(), it.next().unwrap());
        let fileinfo = FileInfo {
            filename: filename.to_string(),
            filesize: filesize.parse::<usize>().unwrap(),
        };
        fileinfos.push(fileinfo);
    }
    let path_out = Path::new(&user_encoding_file_name);
    let mut f_out = File::create(&path_out).expect("Unable to create file");
    // Write number of files
    let bytes = &[n as u8];
    f_out
        .write_all(bytes)
        .expect("Unable to write number of files");

    // Read each data and write
    for x in fileinfos {
        let path_in = Path::new(&directory_name).join(&x.filename);
        let mut data = Vec::new();
        let mut f_in = File::open(&path_in).expect("Unable to open file");
        f_in.read_to_end(&mut data).expect("Unable to read data");
        // Write filename and filesize
        let mut bytes: [u8; 100] = [32; 100];
        let filename_as_byte = x.filename.as_bytes();
        {
            let mut buf: &mut [u8] = &mut bytes;
            buf.write(filename_as_byte)
                .expect("Unable to write data to buffer: filename");
        }
        f_out.write_all(&bytes).expect("Unable to write filename");

        let mut bytes: [u8; 4] = [32; 4];
        let filesize_as_byte = u32_to_u8(x.filesize as u32);
        {
            let mut buf: &mut [u8] = &mut bytes;
            buf.write(&filesize_as_byte)
                .expect("Unable to write data to buffer: filesize");
        }
        f_out.write_all(&bytes).expect("Unable to write filesize");

        // Write data
        f_out.write_all(&data).expect("Unable to write data");
    }
}

fn decompress() {
    let line = gets();
    let user_encoding_file_name = line.trim();

    let line = gets();
    let unzip_directory_name = line.trim();

    let path_in = Path::new(&user_encoding_file_name);
    let mut f_in = File::open(&path_in).expect("Unable to open file");

    let mut buf = [0; 1];
    f_in.read_exact(&mut buf).expect("Unable to read data");

    let n = buf[0] as usize;

    for _ in 0..n {
        // Filename
        let mut buf = [0; 100];
        f_in.read_exact(&mut buf).expect("Unable to read data");
        let filename = String::from_utf8(buf.to_vec()).unwrap();

        // Filesize
        let mut buf = [0; 4];
        f_in.read_exact(&mut buf).expect("Unable to read data");
        let filesize = u8_to_u32(buf);

        let fileinfo = FileInfo {
            filename: filename.trim().to_string(),
            filesize: filesize as usize,
        };

        let path_out = Path::new(&unzip_directory_name).join(&fileinfo.filename);
        let mut f_out = File::create(&path_out).expect("Unable to open file");

        // Read data
        let mut buf = vec![0; fileinfo.filesize];
        f_in.read_exact(&mut buf).expect("Unable to read data");

        f_out.write_all(&buf).expect("Unable to write data");
    }
}

fn main() {
    let command = gets();
    match command.trim() {
        "encode" => compress(),
        _ => decompress(),
    }
}
