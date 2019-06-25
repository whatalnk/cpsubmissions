// Contest ID: wn2017_1
// Problem ID: wn2017_1_a ( https://atcoder.jp/contests/wn2017_1/tasks/wn2017_1_a )
// Title: A. Satellite data compression
// Language: Rust (1.15.1)
// Submitted: 2018-01-05 09:44:50 +0000 UTC ( https://atcoder.jp/contests/wn2017_1/submissions/1941931 ) 

use std::io;
use std::io::{Cursor, Read, Write};
use std::fs::File;
use std::path::Path;
use std::cmp::Ordering;
use std::collections::{BinaryHeap, HashMap};

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf;
}

struct FileInfo {
    filename: String,
    filesize: usize,
}

// Big-Endian ?
fn u16_to_u8(x: u16) -> [u8; 2] {
    return [(x & 255) as u8, ((x >> 8) & 255) as u8];
}

fn u8_to_u16(x: [u8; 2]) -> u16 {
    return ((x[1] as u16) << 8) ^ (x[0] as u16);
}

fn u32_to_u8(x: u32) -> [u8; 4] {
    return [
        (x & 255) as u8,
        ((x >> 8) & 255) as u8,
        ((x >> 16) & 255) as u8,
        (x >> 24) as u8,
    ];
}

fn u8_to_u32(x: [u8; 4]) -> u32 {
    return ((x[3] as u32) << 24) ^ ((x[2] as u32) << 16) ^ ((x[1] as u32) << 8) ^ (x[0] as u32);
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
    return buf;
}

fn to_encoded_string(encoded_: Vec<u8>) -> String {
    let r = *&encoded_[0] as usize;
    let mut encoded = String::new();
    for x in &encoded_[1..] {
        encoded.push_str(&format!("{:>08b}", x));
    }
    return encoded[0..(encoded.len() - r)].to_string();
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
        // u8 to u16
        let data_u16 = data.chunks(2)
            .map(|x| u8_to_u16([x[0], x[1]]))
            .collect::<Vec<u16>>();
        let freq_table = make_freq_table(&data_u16);
        let code_tree = make_tree(freq_table);
        let mut huffman = Huffman {
            root: None,
            code_table: HashMap::new(),
        };
        huffman.make_code(&code_tree, "".to_string());
        let encoded = huffman.encode(&data_u16);
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

        let filesize_as_byte = u32_to_u8(x.filesize as u32);
        f_out
            .write_all(&filesize_as_byte)
            .expect("Unable to write filesize");

        // Export code tree
        let mut tree = Tree {
            out: Vec::new(),
            cur: Cursor::new(Vec::new()),
            root: Node {
                code: None,
                count: 0,
                left: None,
                right: None,
            },
        };
        tree.write_tree(&code_tree);

        let code_tree_size_as_byte = u32_to_u8(tree.out.len() as u32);
        f_out
            .write_all(&code_tree_size_as_byte)
            .expect("Unable to write code_tree size");

        f_out
            .write_all(&tree.out)
            .expect("Unable to write code_tree");

        // Write encoded data size
        let filesize_as_byte = u32_to_u8(encoded_.len() as u32);
        f_out
            .write_all(&filesize_as_byte)
            .expect("Unable to write filesize");

        // Write data
        f_out.write_all(&encoded_).expect("Unable to write data");
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
    f_in.read_exact(&mut buf).expect("Unable to read data");
    let n = buf[0] as usize;

    for _ in 0..n {
        // Read filename
        let mut buf = [0; 100];
        f_in.read_exact(&mut buf).expect("Unable to read data");
        let filename = String::from_utf8(buf.to_vec()).unwrap();
        // Read filesize
        let mut buf = [0; 4];
        f_in.read_exact(&mut buf).expect("Unable to read data");
        let filesize = u8_to_u32(buf);
        let fileinfo = FileInfo {
            filename: filename.trim().to_string(),
            filesize: filesize as usize,
        };

        // Read code tree
        // Code tree size
        let mut buf = [0; 4];
        f_in.read_exact(&mut buf).expect("Unable to read data");
        let code_tree_size = u8_to_u32(buf) as usize;

        // Code tree
        let mut buf = vec![0; code_tree_size];
        f_in.read_exact(&mut buf).expect("Unable to read data");

        // Decode code tree
        let mut tree = Tree {
            out: Vec::new(),
            cur: Cursor::new(buf),
            root: Node {
                code: None,
                count: 0,
                left: None,
                right: None,
            },
        };
        let root = tree.read_tree();

        // Read encoded data size
        let mut buf = [0; 4];
        f_in.read_exact(&mut buf).expect("Unable to read data");
        let encoded_size = u8_to_u32(buf) as usize;

        let path_out = Path::new(&unzip_directory_name).join(&fileinfo.filename);
        let mut f_out = File::create(&path_out).expect("Unable to open file");

        // Read data
        let mut buf = vec![0; encoded_size];
        f_in.read_exact(&mut buf).expect("Unable to read data");

        let encoded = to_encoded_string(buf);
        let tree = Huffman {
            root: root,
            code_table: HashMap::new(),
        };
        let decoded = tree.decode(encoded, fileinfo.filesize / 2);

        // u16 to u8
        let mut bytes = vec![0; fileinfo.filesize];
        {
            let mut buf: &mut [u8] = &mut bytes;
            for x in decoded {
                buf.write(&u16_to_u8(x))
                    .expect("Unable to write data to buffer");
            }
        }
        f_out.write_all(&bytes).expect("Unable to write data");
    }
}

#[derive(Eq, PartialEq, Debug)]
struct Node {
    code: Option<u16>,
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

fn make_freq_table(data: &[u16]) -> HashMap<&u16, usize> {
    let mut counter = HashMap::new();
    for x in data {
        let entry = counter.entry(x).or_insert(0);
        *entry += 1;
    }
    return counter;
}

fn make_tree(freq_table: HashMap<&u16, usize>) -> Node {
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

struct Tree {
    out: Vec<u8>,
    cur: Cursor<Vec<u8>>,
    root: Node,
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
                self.out.append(&mut u16_to_u8(c).to_vec());
            }
        }
    }
    fn read_tree(&mut self) -> Option<Box<Node>> {
        let mut buf = [0; 1];
        self.cur.read_exact(&mut buf).expect("Unable to read data");
        let x = &buf[0];

        if x == &1 {
            let mut buf = [0; 2];
            self.cur.read_exact(&mut buf).expect("Unable to read data");
            let x = u8_to_u16(buf);
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

struct Huffman {
    root: Option<Box<Node>>,
    code_table: HashMap<u16, String>,
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
    fn encode(&self, data: &[u16]) -> String {
        let mut encoded = String::new();
        for x in data {
            let x = self.code_table.get(x).unwrap();
            encoded.push_str(&x);
        }
        encoded
    }

    fn decode(&self, encoded: String, size: usize) -> Vec<u16> {
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

fn main() {
    let command = gets();
    match command.trim() {
        "encode" => compress(),
        _ => decompress(),
    }
}
