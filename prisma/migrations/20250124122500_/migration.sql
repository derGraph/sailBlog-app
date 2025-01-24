/*
  Warnings:

  - You are about to alter the column `propulsion` on the `Datapoint_local` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.
  - Made the column `propulsion` on table `Datapoint_local` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `lastMode` to the `StoredSettings` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Datapoint_local" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "time" DATETIME NOT NULL,
    "lat" DECIMAL NOT NULL,
    "long" DECIMAL NOT NULL,
    "speed" DECIMAL,
    "heading" DECIMAL,
    "depth" DECIMAL,
    "h_accuracy" DECIMAL,
    "v_accuracy" DECIMAL,
    "propulsion" INTEGER NOT NULL,
    "uploaded" INTEGER NOT NULL DEFAULT 0
);
INSERT INTO "new_Datapoint_local" ("depth", "h_accuracy", "heading", "id", "lat", "long", "propulsion", "speed", "time", "uploaded", "v_accuracy") SELECT "depth", "h_accuracy", "heading", "id", "lat", "long", "propulsion", "speed", "time", "uploaded", "v_accuracy" FROM "Datapoint_local";
DROP TABLE "Datapoint_local";
ALTER TABLE "new_Datapoint_local" RENAME TO "Datapoint_local";
CREATE TABLE "new_StoredSettings" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "own_source" BOOLEAN NOT NULL,
    "ip" TEXT,
    "lastMode" INTEGER NOT NULL
);
INSERT INTO "new_StoredSettings" ("id", "ip", "own_source") SELECT "id", "ip", "own_source" FROM "StoredSettings";
DROP TABLE "StoredSettings";
ALTER TABLE "new_StoredSettings" RENAME TO "StoredSettings";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
