# quantified

## todo
- [x] postgres container
- [ ] migrations
    - [x] edits
    - [x] visibility
    - [ ] workout sessions
    ...
- [x] wrapper scripts for dev/test database support
- [ ] production docker-compose
    - [ ] dockerfile from luminus in production/
        - [ ] env var for db conn
    - [ ] basically the same postgres except no dev/test wrappper
- [ ] figure out how to add migrations (or any files) and have them be editable on the host

## dev setup
1. `docker-compose up`
2. The timing of container instantiation isn't quite perfect enough to automate the migrations - run `docker exec -ti quantified-container lein run migrate` before connecting to the nrepl

## adding migrations
1. `docker exec -ti lein migratus create [name-of-migration-action]`
2. After a minute or two there will be files in **quantified/resources/migrations/** for the up and down migration actions. Put the _migratus_ syntax sql commands there.
3. In order to edit the files run a chmod or chown command on the host. Example - `sudo chown -R [your-user] /path/to/quantified`

## reference
https://hub.docker.com/_/postgres/
https://github.com/docker-library/postgres/issues/151
- note the use of `docker-entrypoint-initdb.d/` anything in there gets sourced automatically (.sh or .sql)
