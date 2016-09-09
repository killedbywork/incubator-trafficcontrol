
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
alter table server add column offline_reason varchar(256) NOT NULL DEFAULT 'N/A' AFTER status;

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
alter table server drop column offline_reason;
