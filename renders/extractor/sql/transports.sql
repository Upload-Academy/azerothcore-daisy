
-- START transports
SET
@guid := {guid},
@entry := {entry},
@name := '{name}',
@scriptname := '{scriptname}';

DELETE FROM transports WHERE
    guid=@guid
;

INSERT INTO transports (
    guid,
    entry,
    name,
    scriptname
)
VALUES (
    @guid,
    @entry,
    @name,
    @scriptname
);
-- EOF transports