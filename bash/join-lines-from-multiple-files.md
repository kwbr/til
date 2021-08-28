# Join lines from multiple files

This TIL uses `paste` to join multiple files and then use the Bash builtin `read` to access those lines. Courtesy from a helpful [HN Comment](https://https://news.ycombinator.com/item?id=28259340).

```sh
paste -d \\n <(do_something1) <(do_something2) | while read -r var1 && read -r var2; do
    ... # var1 comes from do_something1, var2 comes from do_something2
done
```
