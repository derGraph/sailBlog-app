-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_StoredSettings" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "ownSource" BOOLEAN NOT NULL DEFAULT true,
    "onlineMode" BOOLEAN NOT NULL DEFAULT true,
    "ip" TEXT,
    "lastMode" INTEGER NOT NULL,
    "cookie" TEXT
);
INSERT INTO "new_StoredSettings" ("cookie", "id", "ip", "lastMode", "onlineMode", "ownSource") SELECT "cookie", "id", "ip", "lastMode", "onlineMode", "ownSource" FROM "StoredSettings";
DROP TABLE "StoredSettings";
ALTER TABLE "new_StoredSettings" RENAME TO "StoredSettings";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
