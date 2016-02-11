# Starting a new repository

When starting a new project I like to start with a clean, empty repository. Then the progress of adding and removing files to the project is more clear.

I do this by starting with an empty commit:

```bash
$ git init && git commit --allow-empty -m "Initial commit"
```

I added this also as an alias to mit GIT config

```bash
git config --global alias.start '!git init && git commit --allow-empty -m "Initial commit"'
```

## References

https://coderwall.com/p/m_pgbg/start-git-repos-with-an-empty-commit
