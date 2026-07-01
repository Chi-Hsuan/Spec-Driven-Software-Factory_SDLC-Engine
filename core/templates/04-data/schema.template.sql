-- schema.sql = Database Contract（唯一真實的實體 DB 結構），由 data-model.md 轉譯而來。
-- 不要放：
--   - 為什麼這樣設計 → data-model.md 的業務規則區塊
--   - schema 如何演進 / 版本間差異 → migration-plan.md
-- 規則：
--   - table / column 命名對應 data-model.md 的 entity_id / 欄位（snake_case）
--   - 每個 table 必須有對應 migration-plan.md 的建立紀錄（migration_id）

-- entity-user
CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- entity-resource
CREATE TABLE resources (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_resources_user_id ON resources(user_id);
