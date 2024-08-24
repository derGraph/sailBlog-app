/*
  Warnings:

  - Added the required column `last_update` to the `Datapoint_local` table without a default value. This is not possible if the table is not empty.
  - Added the required column `last_update` to the `Datapoint_uploaded` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Datapoint_local" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "last_update" DATETIME NOT NULL,
    "lat" DECIMAL NOT NULL,
    "long" DECIMAL NOT NULL,
    "speed" DECIMAL,
    "heading" DECIMAL,
    "depth" DECIMAL,
    "h_accuracy" DECIMAL,
    "v_accuracy" DECIMAL,
    "propulsion" TEXT
);
INSERT INTO "new_Datapoint_local" ("depth", "h_accuracy", "heading", "id", "lat", "long", "propulsion", "speed", "v_accuracy") SELECT "depth", "h_accuracy", "heading", "id", "lat", "long", "propulsion", "speed", "v_accuracy" FROM "Datapoint_local";
DROP TABLE "Datapoint_local";
ALTER TABLE "new_Datapoint_local" RENAME TO "Datapoint_local";
CREATE TABLE "new_Datapoint_uploaded" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "last_update" DATETIME NOT NULL,
    "lat" DECIMAL NOT NULL,
    "long" DECIMAL NOT NULL,
    "speed" DECIMAL,
    "heading" DECIMAL,
    "depth" DECIMAL,
    "h_accuracy" DECIMAL,
    "v_accuracy" DECIMAL,
    "propulsion" TEXT
);
INSERT INTO "new_Datapoint_uploaded" ("depth", "h_accuracy", "heading", "id", "lat", "long", "speed", "v_accuracy") SELECT "depth", "h_accuracy", "heading", "id", "lat", "long", "speed", "v_accuracy" FROM "Datapoint_uploaded";
DROP TABLE "Datapoint_uploaded";
ALTER TABLE "new_Datapoint_uploaded" RENAME TO "Datapoint_uploaded";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
