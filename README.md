# WoS Daisy

Woof! Daisy is a World of Solocraft project by [Michael Crilly](https://crilly.au/).

Daisy is a set of Python tools that can extract (`extractor.py`) information about the tables in an [AzerothCore](https://www.azerothcore.org/) database, specifically the `acore_world` database, but that can be configured. Once this data is extracted, Daisy can then generate all the templates and files needed to make manipulating an AzerothCore database much, much easier using her second tool: `daisy.py`.

## Quickstart

All the commands below assume you're operating on macOS or Linux. Windows, without using the Windows Subsystem for Linux (v2) is a nightmare to develop on and isn't taken into consideration below. Sorry.

1. Use `. activate.sh` to activate and source the contents of `activate.sh` (don't _execute_ it)
   2. This gives your Bash aliases like `daisy`, `extractor`, and `db2yaml`
3. Now configure `extractor.yaml` and set up the following keys to be accurate based on your set up...
   4. `extractor.database.db`
   5. `extractor.database.hostname`
   6. `extractor.database.username`
   7. `extractor.database.password`
8. Now execute `extractor` (or if you're not using the aliases: `python3 extractor.py`)
9. Now you can use `daisy -n org/pack` to create a new Pack
   10. Replacing `org` with your organisation name or some username (or whatever)
   11. And replacing `pack` with the name of the Pack, like `awesome-new-quests-v1`
12. Edit `org/pack/pack.yaml` and update the meta data in there
    13. I suggest leaving `daisy.pack.source` and `daisy.pack.build` alone for now
12. Go and write some YAML in `org/pack/src/`
13. And then run `daisy -p org/pack/pack.yaml` and you'll get SQL out into the path configured at `daisy.pack.build`, which defaults to `packs/<org>/<pack>/build`
14. Import the `*.sql` files inside of the build directory into your MySQL instance...
    15. Something _like_ `mysql -h <host> -u <user> -p acore_world < packs/<org>/<pack>/build`

## Why?

Daisy exists because although this author loves [Keira3](https://github.com/azerothcore/Keira3) (and still uses it, in fact), they also love YAML, code, and doing things from the CLI. It's faster and easier to work with, and it makes it incredibly easy to share database changes in the form of YAML (see "Packs" below.)

Keira3 (K3) is very slow to work with, because you're restricted to a GUI, clicking about, and moving between fields. And besides the resulting SQL you can extract from K3, sharing your work is harder. K3 also "hides" certain facts from you, one example being the "Factions" UI that leads people to believe there is a "factions" table in the database, but it is in fact in the client-side DBC files. This isn't a big issue, but I like a true reflection of the state of things so I can come to understand them fully.

So Daisy is designed to compliment K3 for a lot of things. It's aimed at people (such as the Repack community) who want to mass produce NPCs, quests, spells, and more. Doing that work with K3 is slow and painful. Daisy makes it easier! Woof!

## Packs

A "Pack" is a unit of work that is sharable. It's made of two things:

1. A Pack file
1. A collection of YAML describing what you want to do

Under the `packs/` directory at the root of this repository, you'll see examples, such as `packs/mcrilly/chickens/`. There's a file there called `pack.yaml` that looks like this:

```yaml
---
daisy:
  pack:
    name: Crazy Chickens
    version: 1.0.0
    author: Michael Crilly
    homepage: https://github.com/Upload-Academy/azerothcore-module-wos
    source: packs/mcrilly/chickens/src
    build: modules/wos/build
```

This describes the Pack to Daisy. She uses two _important_ fields to do her job: `source` and `build`.

The `source` file is an absolute or relative path to the YAML files you want to parse. If this path is _relative_, then it's relative to _where you execute Daisy_. The `source` field in this example is: `packs/mcrilly/chickens/src`, which is relative to the `daisy.py` Python script.

The `build` _directory_ (not a file like the Pack) is where the _results_ of Daisy's work will be written. This will contain all the SQL files that are rendered given the YAML files you've made. This is _also relative_ to where you execute Daisy from, unless you use an absolute path like `/my/awesome/absolute/path`. If the `build` path does not exist it will be created along with all its non-existent parent directories.

The `build` key above demonstrates that the output of Daisy can be just about anywhere on your file system, which might be useful for people who want Daisy to write directly into the (external) module's `data/` directory.

Continuing with the example Pack file, the only file inside of `source` is `chicken.yaml`. The names of these files is irrelevant - they can be called anything you like. Inside of these files is where you start writing your table definitions:

```yaml
# This key is a must
tables: # it has to be tables
  quest_template: # this is a table name in the database
    - id: *pa_maclure_quest_id
      questtype: *QUEST_TYPE_ENABLED
      questlevel: 3
      minlevel: 2
      rewardmoney: 120 
      logtitle: Freaky Chickens!
      logdescription: Some weird, freaky chickens have spawned on the farm and they need to be killed!
      questdescription: |
        I got them weird magic chickens poppin' up all over me farm! They jus' keep comin' an' comin'. Lots o' folks been tryin' to kill 'em, but they don't stay dead. Can ya help thin 'em out a bit 'til we figger how to stop 'em for good?
      questcompletionlog: |
        Quest complete
      objectivetext1: 'Kill 10 Crazy Chickens'
      objectivetext2: 'Kill 10 Magic Chickens'
      requirednpcorgo1: *crazy_chicken
      requirednpcorgocount1: 10
      requirednpcorgo2: *magic_chicken
      requirednpcorgocount2: 10
```

The `tables` keyword is a _reversed_ word. You must only use it to define what tables (here: `quest_template`) you want to write content for. That's how Daisy works: you create a key in the `tables` map to tell Daisy what AzerothCore table you want to manipulate. Then you provide a list of objects under that table name, which are based on the table's columns! That's it.


## Reserved Words

Other reserved words include `move`, `update`, and `delete`. These are documented below.

### Move (a game object or creature)

TBC.

### Update (an existing table and row(s))

TBC.

### Delete (existing data from a table)

TBC.

## Installation & Usage

All instructions assume a Linux or macOS installation. You need Python 3.10 as a minimum.

1. Fork (not clone) this repository
1. Clone your fork
1. _Source_  (not execute) the activate script: `. activate.sh`

To use Daisy, you have to run two tools in order:

1. Make sure that `extractor.yaml` has the correct database information in it
1. Run the extractor: `extractor`

This will create files in (assuming a default configuration) `mappings/*`. We've not included the `mappings/` directory in this repository as it's best you pull the data from your own local AzerothCore database to ensure maximum compatibility. 

Next, run Daisy...

### Creating a Pack

To execute/use Daisy you must create a "pack". A quick way of getting a template in place is to use the `-n` flag:

```shell
daisy -n organisation/pack_name
```

So you might replace `organisation` with your GitHub username and `pack_name` with something that describes your Pack's objectives in a few words.

Or you can create a pack manually, like this:

1. Create (via any structure you like) a `pack.yaml` (or whatever name you like) file under `packs/` (I recommend: `username/pack_title/pack.yaml`)
1. Use the above example to structure your Pack's information: `source` and `build` are critical
1. Enter values into the `.yaml` files under your `source` directory using the `tables` key
1. Each entry is for a specific table in the `extractor.tables` configuration list (these are the actual table names from `acore_world`)

> Note: see the `packs/mcrilly/chickens/src/chicken.yaml` pack for an example.

> Note how there is a distinct lack of columns here. Compared to the actual structure of the table, the number of columns, above, is greatly reduced. That's where the `renders/extractor/yaml/` files come in - they contain the other columns and their default values. You data, above, it merged (and overrides) the defaults, so every column is populated.

And now when you run Daisy:

```shell
daisy -p packs/mcrilly/chickens/src/chicken.yaml
```

You end up with `.sql` files in `build` directory. Notice how the filenames match the table names? That's essentially how all of this works. We also include the pack and pack version so we can "namespace" changes to the database across modules.

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