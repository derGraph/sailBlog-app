/*
  Warnings:

  - You are about to drop the column `own_source` on the `StoredSettings` table. All the data in the column will be lost.
  - Added the required column `onlineMode` to the `StoredSettings` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ownSource` to the `StoredSettings` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_StoredSettings" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "ownSource" BOOLEAN NOT NULL,
    "onlineMode" BOOLEAN NOT NULL,
    "ip" TEXT,
    "lastMode" INTEGER NOT NULL,
    "cookie" TEXT
);
INSERT INTO "new_StoredSettings" ("cookie", "id", "ip", "lastMode") SELECT "cookie", "id", "ip", "lastMode" FROM "StoredSettings";
DROP TABLE "StoredSettings";
ALTER TABLE "new_StoredSettings" RENAME TO "StoredSettings";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
