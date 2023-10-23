# Abstractions

> __NOTE__: this is an _idea_ and is not to be taken as an available feature.

As well as the `tables` key used in Packs - which is used to add records to any table - I want to add an `abstractions` key. This key will contains "Abstractions" or "Operation Bundles" (O/B) which can simplify interacting with the database. As an example, imagine this (completing fictional) code is inside of a Pack:

```yaml
abstractions:
  - type: npc
    entry: 5566 # Tannya
    description: Update the NPC's flags to be a quest giver
    operations:
      - op: npcflag_add
        value: questgiver
```

From this, we can probably work out that we're going to manipulate an NPC because of `npc`. This means editing the `creature_template` table. We're going to edit `5566`, because that's the `entry` we've supplied. Next we're providing a simple description for documentation purposes. And finally, we're defining the operations we want to perform on the NPC, in this case we want to __add__ the "Quest Giver" flag to the NPC.

This is one possible way this syntax may look.