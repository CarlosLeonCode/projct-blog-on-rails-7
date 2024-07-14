# Features Rails 7

- data: { turbo_confirm: "Are you sure?" }: Before rails 7 it was with *data: { confirm: 'Are you sure?' }*


### Commands to have in mind

```shell
rails db:system:change --to=postgresql
git add -p
```


### executing project with tailwind
If we install tailwind, we can execute our project with following command:
```shell
/bin/dev
```
you can what commands we can use for watch tailwind css changes (using foreman) into *Procfile.dev* this will
looks like:
```procfile
web: bin/rails server
css: bin/rails tailwindcss:watch
```


### find_each method
