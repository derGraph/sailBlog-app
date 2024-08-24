/*
  Warnings:

  - You are about to alter the column `uploaded` on the `Datapoint_local` table. The data in that column could be lost. The data in that column will be cast from `Boolean` to `Int`.

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
    "propulsion" TEXT,
    "uploaded" INTEGER NOT NULL DEFAULT 0
);
INSERT INTO "new_Datapoint_local" ("depth", "h_accuracy", "heading", "id", "lat", "long", "propulsion", "speed", "time", "uploaded", "v_accuracy") SELECT "depth", "h_accuracy", "heading", "id", "lat", "long", "propulsion", "speed", "time", "uploaded", "v_accuracy" FROM "Datapoint_local";
DROP TABLE "Datapoint_local";
ALTER TABLE "new_Datapoint_local" RENAME TO "Datapoint_local";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
