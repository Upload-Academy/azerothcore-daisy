# Documentation

Some simple notes for the time being.

## Updating an existing DB entry

```yaml
- table: creature_template
    columns:
      npcflag: <new value>>
    where:
      entry:
        - <existing entry ID>
```
