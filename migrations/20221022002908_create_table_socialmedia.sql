-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE
    `socialmedia` (
        `id` INT(11) unsigned NOT NULL AUTO_INCREMENT,
        `name` varchar(50) NOT NULL,
        `url` text NOT NULL,
        `user_id` int(11) NOT NULL,
        `created_at` datetime DEFAULT NULL,
        `updated_at` datetime DEFAULT NULL,
        `deleted_at` datetime DEFAULT NULL,
        PRIMARY KEY (`id`),
        UNIQUE KEY `id` (`id`)
    );

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE `socialmedia`;

-- +goose StatementEnd