# gzip a file
```{bash}
head policies.json
{
    "0": {
        "0": {
            "1": 50.0,
            "2": 50.0
        },
        "1": {
            "0": 33.33,
            "3": 33.33,
            "4": 33.33

gzip policies.json

ll policies.json.gz
-rw-r--r--  1 rwoo  staff   4.8M  7 31 17:08 policies.json.gz
```
# gunzip a gz file
```{bash}
gunzip policies.json.gz

head policies.json
{
    "0": {
        "0": {
            "1": 50.0,
            "2": 50.0
        },
        "1": {
            "0": 33.33,
            "3": 33.33,
            "4": 33.33
```

# gzip, gunzip is compress/decompress a file not files like archive
