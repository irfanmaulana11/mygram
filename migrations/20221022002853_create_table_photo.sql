-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE
    `photo` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `title` varchar(255),
        `caption` varchar(255),
        `photo_url` varchar(255),
        `user_id` int(11) NOT NULL,
        `created_at` datetime DEFAULT NULL,
        `updated_at` datetime DEFAULT NULL,
        `deleted_at` datetime DEFAULT NULL,
        PRIMARY KEY (`id`)
    );

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE `photo`;

-- +goose StatementEnd