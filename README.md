# WoS Daisy

Bark! Daisy is a World of Solocraft project.

Daisy is a set of Python tools that can extract (`extrtactor.py`) information about the tables in an [AzerothCore](https://www.azerothcore.org/) database, specifically the `acore_world` database, but that can be configured. Once this data is extracted, Daisy can then generate all the templates and files needed to make manipulating an AzerothCore database much, much easier using her second tool: `daisy.py`.

## Why?

Daisy exists because although this author loves [Keira3](https://github.com/azerothcore/Keira3) (and still uses it, in fact), they also love YAML, code, and doing things from the CLI. It's faster and easier to work with, and it makes it incredibly easy to share database changes in the form of YAML (see "Packs" below.)

Keira3 (K3) is very slow to work with, because you're restricted to a GUI, clicking about, and moving between fields. And besides the resulting SQL you can extract from K3, sharing your work is harder. K3 also "hides" certain facts from you, one example being the "Factions" UI that leads people to believe there is a "factions" table in the database, but it is in fact in the client-side DBC files. This isn't a big issue, but I like a true reflection of the state of things so I can come to understand them fully.

So Daisy is designed to compliment K3 for a lot of things. It's aimed at people (such as the Repack commuity) who want to mass-produce NPCs, quests, spells, and more. Doing that work with K3 is slow and painful. Daisy makes it easier! Bark!

## Packs

A "Pack" is a unit of work that is sharable. Under the `packs/` directory at the root of this repository, you'll see examples. These are, in simple terms, just directories that contain YAML files. No directories are actually required at all: you can simply define a flat YAML file at `./packs/my.yaml` and it'll be loaded. The key to a Pack is the `meta.*` block inside that YAML file:

```yaml
# packs/mcrilly/example/data.yaml
meta:
  pack: example
  version: 0.1.0

tables:
  creature_template:
    - entry: 910001
      modelid1: 7106
      name: "Rixxle"
      subname: "Totally Legit Warez"
      minlevel: 60
      maxlevel: 60
      npcflag: 1
      faction: 120

  creature:
    - guid: 910001
      id1: 910001
      map: 0
      position_x: -11280.18
      position_y: 1433.82
      position_z: 89.41
      orientation: 6.17
      comment: "Some random goblin"
```

The `meta.pack` variable defines the name of the Pack. The `meta.version` variable defines its current version. This can be anything.

Creating a Pack simply involves placing YAML files inside of `packs/` with that `meta.*` key and variables in place, and you're done. Every YAML file _must_ have the `meta.*` document in there. 

This structure might change in the future, and Daisy is absolutely going to support downloading Packs from remote HTTPS servers, to make sharing even easier.

## Installation & Usage

All instructions assume a Linux or macOS installation. You need Python 3.10 as a minimum.

1. Clone this repository
1. Create a Python 3 virtual environment: `python3 -m venv venv`
1. Activate that new virtual environment: `source venv/bin/activate`
1. Install all the required modules and packages into the virtual environment: `pip install -r requirements.txt`

To use Daisy, you have to run two tools in order:

1. Make sure that `config.yaml` has the correct database information in it
1. Run the extractor: `python extractor.py`

This will overwrite the files in (assuming a default configuration) `renders/extractor/*`. Next, run Daisy...

For this, you must create a "pack":

1. Create (via any structure you like) a `.yaml` file under `packs/` (I recommend: `username/pack_purpose`)
1. Create a key in the YAML as `meta` and provide two values:
    1. A `pack` key with a string value as the pack's name
    1. A `version` key with a semantic version (but it can be anything you like really)
1. Enter values into the `.yaml` file under the `tables` key
1. Each entry is for a specific table in the `config.extractor.tables` list (these are the actual table names from `acore_world`)

> Note: see the `packs/mcrilly/random_goblin.yaml` pack for an example

Here's an example:

```yaml
meta:
  pack: example
  version: 0.1.0

tables:
  creature_template:
    - entry: 910001
      modelid1: 7106
      name: "Rixxle"
      subname: "Totally Legit Warez"
      minlevel: 60
      maxlevel: 60
      npcflag: 129
      faction: 120

  creature:
    - guid: 910001
      id1: 910001
      map: 0
      position_x: -11280.18
      position_y: 1433.82
      position_z: 89.41
      orientation: 6.17
```

> Note how there is a distinct lack of columns here. Compared to the actual structure of the table, the number of columns, above, is greatly reduced. That's where the `renders/extractor/yaml/` files come in - they contain the other columns and their default values. You data, above, it merged (and overrides) the defaults, so every column is populated.

And now when you run Daisy:

```shell
python daisy.py
```

You end up with two `.sql` files in (by default) `renders/daisy/`:

- `<pack>-<version>-creature_template.sql`
- `<pack>-<version>-creature.sql`

Notice how the filenames match the table names? That's essentially how all of this works. We also include the pack and pack version so we can "namespace" changes to the database.

## YAML Anchors

YAML has a feature known as "anchors". It's incredibly powerful, and is the reason I chose YAML in the first place. Consider the `data.yaml` example from above:

```yaml
tables:
  creature_template:
    - entry: 910001
      modelid1: 7106
      name: "Rixxle"
      subname: "Totally Legit Warez"
      minlevel: 60
      maxlevel: 60
      npcflag: 129
      faction: 120

  creature:
    - guid: 910001
      id1: 910001
      map: 0
      position_x: -11280.18
      position_y: 1433.82
      position_z: 89.41
      orientation: 6.17
```

Look at the `creature_template.entry` value of `910001`. It's repeated three times:

1. `creature_template.entry`
1. `creature.guid`
1. `creature.id1`

Consider a change where you need to update this value and it's being used way more than three times, spread across several files? IDEs can help a lot here, but it's potentially error prone. If we use YAML anchors, however:

```yaml
entry: &entry 910001

tables:
  creature_template:
    - entry: *entry
      modelid1: 7106
      name: "Rixxle"
      subname: "Totally Legit Warez"
      minlevel: 60
      maxlevel: 60
      npcflag: 129
      faction: 120

  creature:
    - guid: *entry
      id1: *entry
      map: 0
      position_x: -11280.18
      position_y: 1433.82
      position_z: 89.41
      orientation: 6.17
```

Now I've defined the entry ID once, and used an `&anchor` to make it possible to reuse the value else where using `*anchor`, where "anchor" is anything you like. This author uses a structure like this:

```yaml
entry_ids:
  # Recommended structure:
  # 
  #   5ABC00
  #   5 = this "expansion" of our work. "6" will become another large body of work.
  #       You use whatever you like.
  #   A = the group, organisation, or "namespace" of the IDs
  #   B = the "type" of the thing being created
  #   C = 0-8 is all you can eat, 9 is reserved
  #   00 = go nuts
  generic:
    quests: {} # 501000
    npcs: {} # 502000
    conditions: {} # 503000

  vanguardalliance:
    quests: {} # 511000
    npcs: {} # 512000
    gameobjects: {} # 513000
    creatures: {} # 514000
  
  vendorgroups:
    quests: {} # 521000
    
    npcs: # 522000
      defaults:
        minlevel: &vendorGroupMinLevel 60
        maxlevel: &vendorGroupMaxLevel 60
        npcflag: &vendorGroupNPCFlag 129
        faction: &vendorGroupFaction 120
      deadmines:
        rixxle:
          entry: &vendorGroupDeadminesRixxleEntry 522000
          name: &vendorGroupDeadminesRixxleName Rixxle
          subname: &vendorGroupDeadminesRixxleSubname Totally Legit Weapons
          model: &vendorGroupDeadminesRixxleModel 7106
    
    gameobjects: # 523000
      deadmines:
        tent:
          entry: &vendorGroupsDeadminesTent01 523000
          displayid: 7194

    creatures: {} # 524000
```

What's amazing about YAML anchors is the above structure itself is _completely irrelevant_. All that matters is the anchors are unique (and they have to be or the script will complain!) See the `packs/mcrilly/random_goblin` for an example structure.