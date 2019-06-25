// Contest ID: wn2017_1
// Problem ID: wn2017_1_a ( https://atcoder.jp/contests/wn2017_1/tasks/wn2017_1_a )
// Title: A. Satellite data compression
// Language: Rust (1.15.1)
// Submitted: 2018-01-11 05:40:25 +0000 UTC ( https://atcoder.jp/contests/wn2017_1/submissions/1962669 ) 

use std::io;
use std::io::{Cursor, Read, Write};
use std::fs::File;
use std::path::Path;
use std::cmp::Ordering;
use std::collections::{BinaryHeap, HashMap};
use std::collections::hash_map::Entry;
use std::mem;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

// Big-Endian ?
fn u16_to_u8(x: u16) -> [u8; 2] {
    let v: [u8; 2] = unsafe { mem::transmute(x) };
    v
}

fn u8_to_u16(x: [u8; 2]) -> u16 {
    let v: u16 = unsafe { mem::transmute(x) };
    v
}

fn u32_to_u8(x: u32) -> [u8; 4] {
    let v: [u8; 4] = unsafe { mem::transmute(x) };
    v
}

fn u8_to_u32(x: [u8; 4]) -> u32 {
    let v: u32 = unsafe { mem::transmute(x) };
    v
}

fn i32_to_u8(x: i32) -> [u8; 4] {
    let v: [u8; 4] = unsafe { std::mem::transmute(x) };
    v
}

fn u8_to_i32(x: [u8; 4]) -> i32 {
    let v: i32 = unsafe { std::mem::transmute(x) };
    v
}

fn subtract(v1: &Vec<i32>, v2: &Vec<i32>) -> Vec<i32> {
    let v = v1.iter()
        .zip(v2.iter())
        .map(|(a, b)| a - b)
        .collect::<Vec<i32>>();
    v
}

fn add(v1: &Vec<i32>, v2: &Vec<i32>) -> Vec<i32> {
    let v = v1.iter()
        .zip(v2.iter())
        .map(|(a, b)| a + b)
        .collect::<Vec<i32>>();
    v
}

fn get_byte_array(encoded: String) -> Vec<u8> {
    let n = encoded.len();
    let r = (8 - n % 8) as u8;
    let mut encoded_ = encoded;
    for _ in 0..r {
        encoded_.push_str("0");
    }
    let mut buf = Vec::new();
    buf.push(r);
    for i in 0..((encoded_.len() / 8) as usize) {
        if let Ok(x) = u8::from_str_radix(&encoded_[(i * 8)..(i * 8 + 8)], 2) {
            buf.push(x);
        }
    }
    buf
}

fn to_encoded_string(encoded_: Vec<u8>) -> String {
    let r = *&encoded_[0] as usize;
    let mut encoded = String::new();
    for x in &encoded_[1..] {
        encoded.push_str(&format!("{:>08b}", x));
    }
    encoded[0..(encoded.len() - r)].to_string()
}

#[derive(Debug)]
struct FileInfo {
    filename: String,
    filesize: usize,
}

#[derive(Eq, PartialEq, Debug)]
struct Node {
    code: Option<i32>,
    count: usize,
    left: Option<Box<Node>>,
    right: Option<Box<Node>>,
}
impl Ord for Node {
    fn cmp(&self, other: &Node) -> Ordering {
        other.count.cmp(&self.count)
    }
}

impl PartialOrd for Node {
    fn partial_cmp(&self, other: &Node) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}

fn make_freq_table<'a>(
    data: &'a Vec<i32>,
    counter: HashMap<&'a i32, usize>,
) -> HashMap<&'a i32, usize> {
    let mut c = counter;
    for x in data {
        let entry = c.entry(x).or_insert(0);
        *entry += 1;
    }
    c
}

fn make_tree(freq_table: HashMap<&i32, usize>) -> Node {
    let mut tree = BinaryHeap::<Node>::new();
    for (k, v) in freq_table {
        tree.push(Node {
            code: Some(*k),
            count: v,
            left: None,
            right: None,
        });
    }
    while tree.len() > 1 {
        let left = tree.pop().unwrap();
        let right = tree.pop().unwrap();
        tree.push(Node {
            code: None,
            count: left.count + right.count,
            left: Some(Box::new(left)),
            right: Some(Box::new(right)),
        });
    }
    return tree.pop().unwrap();
}

struct Huffman {
    root: Option<Box<Node>>,
    code_table: HashMap<i32, String>,
}
impl Huffman {
    fn make_code(&mut self, node: &Node, code: String) {
        match node.code {
            None => {
                self.make_code(node.left.as_ref().expect("Msg"), code.clone() + "0");
                self.make_code(node.right.as_ref().expect("Msg"), code.clone() + "1");
            }
            Some(c) => {
                self.code_table.entry(c).or_insert(code);
                return;
            }
        }
    }
    fn encode(&self, data: &[i32]) -> String {
        let mut encoded = String::new();
        for x in data {
            let x = self.code_table.get(x).unwrap();
            encoded.push_str(&x);
        }
        encoded
    }

    fn decode(&self, encoded: String, size: usize) -> Vec<i32> {
        let mut iter = encoded.chars();
        let mut size = size;
        let mut decoded = Vec::new();
        while size > 0 {
            let mut node = if let Some(ref b) = self.root {
                b.as_ref()
            } else {
                return decoded;
            };
            while node.code.is_none() {
                if let Some(b) = iter.next() {
                    if b == '0' {
                        node = node.left.as_ref().expect("Left node is None");
                    } else {
                        node = node.right.as_ref().expect("Right node is None");
                    }
                }
            }
            decoded.push(node.code.expect("Code is None"));
            size -= 1;
        }
        decoded
    }
}

struct Tree {
    out: Vec<u8>,
    cur: Cursor<Vec<u8>>,
}
impl Tree {
    fn write_tree(&mut self, node: &Node) {
        match node.code {
            None => {
                self.out.push(0);
                self.write_tree(node.left.as_ref().expect("Msg"));
                self.write_tree(node.right.as_ref().expect("Msg"));
            }
            Some(c) => {
                self.out.push(1);
                self.out.append(&mut i32_to_u8(c).to_vec());
            }
        }
    }
    fn read_tree(&mut self) -> Option<Box<Node>> {
        let mut buf = [0; 1];
        self.cur.read_exact(&mut buf).expect("Unable to read data");
        let x = &buf[0];

        if x == &1 {
            let mut buf = [0; 4];
            self.cur.read_exact(&mut buf).expect("Unable to read data");
            let x = u8_to_i32(buf);
            let node = Node {
                code: Some(x),
                count: 0,
                left: None,
                right: None,
            };
            Some(Box::new(node))
        } else {
            let mut node = Node {
                code: None,
                count: 0,
                left: None,
                right: None,
            };
            node.left = self.read_tree();
            node.right = self.read_tree();
            Some(Box::new(node))
        }
    }
}

fn compress() {
    let line = gets();
    let user_encoding_file_name = line.trim();
    let line = gets();
    let directory_name = line.trim();
    let line = gets();
    let n = line.trim().parse::<usize>().unwrap();
    let mut fileinfos: HashMap<String, Vec<FileInfo>> = HashMap::new();
    for _ in 0..n {
        let line = gets();
        let mut iter = line.trim().split_whitespace();
        let (filename, filesize) = (iter.next().unwrap(), iter.next().unwrap());
        let band = filename.split("_").collect::<Vec<&str>>()[1]
            .split("-")
            .collect::<Vec<&str>>()[3]
            .to_string();
        let x = FileInfo {
            filename: filename.to_string(),
            filesize: filesize.parse::<usize>().unwrap(),
        };
        match fileinfos.entry(band) {
            Entry::Vacant(e) => {
                e.insert(vec![x]);
            }
            Entry::Occupied(mut e) => {
                e.get_mut().push(x);
            }
        }
    }
    let mut data_list = HashMap::new();
    for (_, v) in &fileinfos {
        for x in &v[..1] {
            let path_in = Path::new(&directory_name).join(&x.filename);
            let mut data = Vec::new();
            let mut f_in = File::open(&path_in).expect("Unable to open file");
            f_in.read_to_end(&mut data).expect("Unable to read data");
            // u8 to u16
            let data_u16 = data.chunks(2)
                .map(|x| u8_to_u16([x[0], x[1]]))
                .collect::<Vec<u16>>();
            let data_i32 = data_u16.iter().map(|x| *x as i32).collect::<Vec<i32>>();
            data_list.entry(&x.filename).or_insert(data_i32);
        }
        for x in &v[1..] {
            let path_in = Path::new(&directory_name).join(&x.filename);
            let mut data = Vec::new();
            let mut f_in = File::open(&path_in).expect("Unable to open file");
            f_in.read_to_end(&mut data).expect("Unable to read data");
            // u8 to u16
            let data_u16 = data.chunks(2)
                .map(|x| u8_to_u16([x[0], x[1]]))
                .collect::<Vec<u16>>();
            let data_i32 = data_u16.iter().map(|x| *x as i32).collect::<Vec<i32>>();
            let mut data_subtracted = Vec::new();
            match data_list.entry(&v[0].filename) {
                Entry::Vacant(e) => {
                    e.insert(Vec::new());
                }
                Entry::Occupied(e) => {
                    let v0 = e.get();
                    data_subtracted = subtract(&data_i32, v0);
                }
            }
            data_list.entry(&x.filename).or_insert(data_subtracted);
        }
    }
    let mut counter = HashMap::new();
    for (_, data) in &data_list {
        counter = make_freq_table(data, counter);
    }
    let code_tree = make_tree(counter);
    let mut huffman = Huffman {
        root: None,
        code_table: HashMap::new(),
    };
    huffman.make_code(&code_tree, "".to_string());

    // Write data:
    // Open
    let path_out = Path::new(&user_encoding_file_name);
    let mut f_out = File::create(&path_out).expect("Unable to create file");

    // Write number of files
    let bytes = &[n as u8];
    f_out
        .write_all(bytes)
        .expect("Unable to write number of files");

    // Export code tree
    let mut tree = Tree {
        out: Vec::new(),
        cur: Cursor::new(Vec::new()),
    };
    tree.write_tree(&code_tree);

    let code_tree_size_as_byte = u32_to_u8(tree.out.len() as u32);
    f_out
        .write_all(&code_tree_size_as_byte)
        .expect("Unable to write code_tree size");

    f_out
        .write_all(&tree.out)
        .expect("Unable to write code_tree");

    // Encode and write data
    for (_, v) in &fileinfos {
        for x in v {
            let filename = &x.filename;
            let data = &data_list.get(filename).unwrap();
            let encoded = huffman.encode(&data);
            let encoded_ = get_byte_array(encoded);

            // Write filename
            let mut bytes: [u8; 100] = [32; 100];
            let filename_as_byte = x.filename.as_bytes();
            {
                let mut buf: &mut [u8] = &mut bytes;
                buf.write(filename_as_byte)
                    .expect("Unable to write data to buffer: filename");
            }
            f_out.write_all(&bytes).expect("Unable to write filename");

            // Write filesize
            let filesize_as_byte = u32_to_u8(x.filesize as u32);
            f_out
                .write_all(&filesize_as_byte)
                .expect("Unable to write filesize");

            // Write encoded data size
            let encoded_data_size_as_byte = u32_to_u8(encoded_.len() as u32);
            f_out
                .write_all(&encoded_data_size_as_byte)
                .expect("Unable to write encoded_data_size_as_byte");

            // Write data
            f_out
                .write_all(&encoded_)
                .expect("Unable to write encoded data");
        }
    }
}

fn decompress() {
    let line = gets();
    let user_encoding_file_name = line.trim();

    let line = gets();
    let unzip_directory_name = line.trim();

    let path_in = Path::new(&user_encoding_file_name);
    let mut f_in = File::open(&path_in).expect("Unable to open file");

    // Read number of files
    let mut buf = [0; 1];
    f_in.read_exact(&mut buf)
        .expect("Unable to read data: number of files");
    let n = buf[0] as usize;

    // Read code tree
    // Code tree size
    let mut buf = [0; 4];
    f_in.read_exact(&mut buf)
        .expect("Unable to read data: code tree size");
    let code_tree_size = u8_to_u32(buf) as usize;

    // Code tree
    let mut buf = vec![0; code_tree_size];
    f_in.read_exact(&mut buf)
        .expect("Unable to read data: code tree");

    // Decode code tree
    let mut tree = Tree {
        out: Vec::new(),
        cur: Cursor::new(buf),
    };
    let root = tree.read_tree();

    // Decode
    let tree = Huffman {
        root: root,
        code_table: HashMap::new(),
    };

    let mut fileinfos: HashMap<String, Vec<FileInfo>> = HashMap::new();
    let mut data_list = HashMap::new();

    for _ in 0..n {
        // Read filename
        let mut buf = [0; 100];
        f_in.read_exact(&mut buf).expect("Unable to read data");
        let filename = String::from_utf8(buf.to_vec()).unwrap();
        let band = filename.split("_").collect::<Vec<&str>>()[1]
            .split("-")
            .collect::<Vec<&str>>()[3]
            .to_string();

        // Read filesize
        let mut buf = [0; 4];
        f_in.read_exact(&mut buf).expect("Unable to read data");
        let filesize = u8_to_u32(buf);
        let x = FileInfo {
            filename: filename.trim().to_string(),
            filesize: filesize as usize,
        };
        match fileinfos.entry(band) {
            Entry::Vacant(e) => {
                e.insert(vec![x]);
            }
            Entry::Occupied(mut e) => {
                e.get_mut().push(x);
            }
        }

        // Read encoded data size
        let mut buf = [0; 4];
        f_in.read_exact(&mut buf).expect("Unable to read data");
        let encoded_size = u8_to_u32(buf) as usize;
        // Read data
        let mut buf = vec![0; encoded_size];
        f_in.read_exact(&mut buf)
            .expect("Unable to read data: data");
        let encoded = to_encoded_string(buf);
        let decoded = tree.decode(encoded, (filesize as usize) / 2);
        data_list
            .entry(filename.trim().to_string())
            .or_insert(decoded);
    }
    for (_, v) in &fileinfos {
        let v0 = data_list.get(&v[0].filename).unwrap();
        let v0_u16 = v0.iter().map(|x| *x as u16).collect::<Vec<u16>>();
        // u16 to u8
        let mut bytes = vec![0; v[0].filesize];
        {
            let mut buf: &mut [u8] = &mut bytes;
            for x in v0_u16 {
                buf.write(&u16_to_u8(x))
                    .expect("Unable to write data to buffer");
            }
        }

        // Write decoded data
        let path_out = Path::new(&unzip_directory_name).join(&v[0].filename);
        let mut f_out = File::create(&path_out).expect("Unable to open file");
        f_out.write_all(&bytes).expect("Unable to write data");

        for x in &v[1..] {
            let v1 = data_list.get(&x.filename).unwrap();
            let d_added = add(v1, v0);

            // i32 to u16
            let d_added_u16 = d_added.iter().map(|x| *x as u16).collect::<Vec<u16>>();

            // u16 to u8
            let mut bytes = vec![0; x.filesize];
            {
                let mut buf: &mut [u8] = &mut bytes;
                for x in d_added_u16 {
                    buf.write(&u16_to_u8(x))
                        .expect("Unable to write data to buffer");
                }
            }

            // Write decoded data
            let path_out = Path::new(&unzip_directory_name).join(&x.filename);
            let mut f_out = File::create(&path_out).expect("Unable to open file");
            f_out.write_all(&bytes).expect("Unable to write data");
        }
    }
}

fn main() {
    let command = gets();
    match command.trim() {
        "encode" => compress(),
        _ => decompress(),
    }
}
