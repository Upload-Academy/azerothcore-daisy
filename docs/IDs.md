# ID Database

This is where you keep track of what entry IDs you're using in the database, and for what. It helps avoid overlapping entry IDs. If this occurs, one Pack will override the work of another without warning.

## Structure

We have `ID` and `Entry` columns to work with. _Generally_ speaking, these are usually an `int unsigned`. The max value for an `int unsigned` value in the database is `4294967295`: https://dev.mysql.com/doc/refman/8.0/en/integer-types.html.

This means we have 10 "columns" or "flags" we can use for a given value. This is the structure I propose you use to decide how you use these values. Starting with `0000000000` or `ABCDEFGHIJ`, we have to consider the following limitations:

- `A` must be <= `4`
- `B` must be <= `2`
- `C` must be <= `9`

And so on. This means what we really have, to keep it simple, is:

- `0999999999`
- `1999999999`
- `2999999999`
- `3999999999`
- `4099999999`
- `4199999999`

So I propose you use ranges `0999999999`, `1999999999`, `2999999999`, and `3999999999` for your "DLC" like content. New things you're adding to the world: attaching quests to creatures, creating new creatures with new mechanics, etc.

The range `4099999999` is a spare range.

And the range `4199999999` is used for testing and overrides are OK. You don't care if you accidently use two IDs at the same time as you just need an ID, any ID, to test something now.

So you might want to use IDs like this:

```
AA BB CD EE EE
09 99 99 99 99
```

Where `AA` is the "DLC" of content Pack. `BB` is the "group" or "organisation" within the Pack, like the Defias Brotherhood, the Blackrock Dwarfs, or whatever. `C` is the type of "thing" this ID is for:

- `1` = quest
- `2` = creature
- `3` = game object

And `D` is the subtype of `C`:

- `CD` = `10` = regular quest
- `CD` = `11` = daily quest
- `CD` = `12` = weekly quest
- `CD` = `13` = repeatable quest
- `CD` = `20` = regular creature
- `CD` = `30` = book
- `CD` = `31` = chest

The `E` fields are used for the ID of the thing you're creating.

## Examples

For Better Professions, I'm going to do the following:

- `AA`      = `01`   = the "DLC"
- `BB`      = `01`   = The Stormwind Orphanage
- `C`       = `1`    = Quest
- `D`       = `3`    = Repeatable quest
- `EEEE`    = `0001` = The quest's ID

For a result of: `010113001`

This means the range `099999999` affords you 10 DLCs, within which you can create 99 groups/organisations, which can have 10 types of "things", which can have 10 sub-types, and finally you can 9999 of those things.

This should allow you to fill your boots with content.

## Better Starting Zones

This Pack is using the following IDs:

### Human

- `0201`

### Undead

- `0202`

## Better Professions

This Pack is using the following IDs.

### The Stormwind Orphanage

```
AA BB CD EE EE
01 01 XX XX XX
```

### The Shattrath City Orphanage

This is used for Blood Elves as well as the Draenei.

Blood Elves:

```
AA BB CD EE EE
01 02 XX XX XX
```

Draenei:

```
AA BB CD EE EE
01 03 XX XX XX
```

### The Orgrimmar Orphanage

```
AA BB CD EE EE
01 04 XX XX XX
```

### The Dalaran Orphanage

```
AA BB CD EE EE
01 05 XX XX XX
```