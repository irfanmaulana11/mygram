-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE
    `users` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `username` VARCHAR(45) NULL,
        `email` VARCHAR(45) NULL,
        `password` VARCHAR(45) NULL,
        `age` INT NULL,
        `created_at` DATETIME NULL,
        `updated_at` DATETIME NULL,
        `deleted_at` datetime DEFAULT NULL,
        PRIMARY KEY (`id`)
    );


-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE `users`;

-- +goose StatementEnd