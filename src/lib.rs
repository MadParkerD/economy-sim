    #[macro_use]
    extern crate serde_derive;

    extern crate serde;
    extern crate serde_json;
mod start_econ {
use std::io::prelude::*;
use std::io::BufReader;
    use std::error::Error;
    use std::fs::File;
    use std::path::Path;
    use serde_json::*;

#[derive(Debug, Serialize, Deserialize)]
    pub enum ptype { 
        large,
            meduim,
            small,
    }

#[derive(Debug, Serialize, Deserialize)]
    pub enum goods {
        sugar(u64),
            ice(u64),
            cotton(u64),
            gold(u64),
            iron(u64),
    }

#[derive(Debug, Serialize, Deserialize)]
    struct port {
        pub name: String,
            pub sizeof: ptype,
            pub economy: Vec<goods>,
            pub route: Vec<usize>
    }

    fn bootstrap(filename: String) -> Vec<port>{
        let mut places = vec![];
        let path = Path::new(&*filename);
        let display = path.display();
        let mut f = match File::open(&path) {
            Err(why) => panic!("No"),
                Ok(file) => file,
        };
        let mut s = String::new();
        let file = BufReader::new(&f);
        for (num, line) in file.lines().enumerate() {
            let l = line.unwrap();
            let line: String = l.chars().skip(1).collect();
            places.push(from_str(&line).unwrap());
        }  

        places
    }
}


#[cfg(test)]
mod tests {
#[test]
    fn it_works() {
        assert_eq!(2 + 2, 4);
    }
}
