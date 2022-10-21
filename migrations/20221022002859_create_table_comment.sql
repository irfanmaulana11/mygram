-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE
    `comment` (
        `id` INT(11) unsigned NOT NULL AUTO_INCREMENT,
        `user_id` int(11) NOT NULL,
        `photo_id` int(11) NOT NULL,
        `message` text NOT NULL,
        `created_at` datetime DEFAULT NULL,
        `updated_at` datetime DEFAULT NULL,
        `deleted_at` datetime DEFAULT NULL,
        PRIMARY KEY (`id`),
        UNIQUE KEY `id` (`id`)
    );

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE `comment`;

-- +goose StatementEnd