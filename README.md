# quantified

## todo
- [x] postgres container
- [x] wrapper scripts for dev/test database support
- [x] migrations
    - [x] edits
    - [x] visibility
    - [x] workout sessions
    - [x] exercises
    - [x] runs
    - [x] users
    - [x] link users - workouts

- [ ] test rollback migrations works
- [ ] import json of parsed csv (use workout parser project)
- [ ] authentications (buddy tokens?)
- [ ] view endpoints
- [ ] view tests
- [ ] _test_ view endpoints (make a codepen/jsfiddle d3/react?)
- [ ] write endpoints
- [ ] test write endpoints 

- [ ] production docker-compose
    - [ ] dockerfile from luminus in production/
        - [ ] env var for db conn
    - [ ] basically the same postgres except no dev/test wrappper
- [ ] figure out how to add migrations (or any files) and have them be editable on the host without the chmod workaround
- [ ] publish workout parser (clojars) and use it as a dependency

## dev setup
1. `docker-compose up`
2. The timing of container instantiation isn't quite perfect enough to automate the migrations - run `docker exec -ti quantified-container lein run migrate` before connecting to the nrepl
3. Connect to the nrepl and run `(quantified.core/-main)` to start the web service. Going to `http://localhost:3000` should bring up the hello world page. The commands _(start)_ and _(stop)_ don't appear to work over the nrepl on the container.

## adding migrations
1. `docker exec -ti [quantified-container-name] lein migratus create [name-of-migration-action]`
2. After a minute or two there will be files in **quantified/resources/migrations/** for the up and down migration actions. Put the _migratus_ syntax sql commands there.
3. In order to edit the files run a chmod or chown command on the host. Example - `sudo chown -R [your-user] /path/to/quantified`

## reference
https://hub.docker.com/_/postgres/
https://github.com/docker-library/postgres/issues/151
- note the use of `docker-entrypoint-initdb.d/` anything in there gets sourced automatically (.sh or .sql)
