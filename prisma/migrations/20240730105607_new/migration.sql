/*
  Warnings:

  - You are about to drop the `Datapoint_uploaded` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Datapoint_uploaded";
PRAGMA foreign_keys=on;

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
    "propulsion" TEXT,
    "uploaded" BOOLEAN NOT NULL DEFAULT false
);
INSERT INTO "new_Datapoint_local" ("depth", "h_accuracy", "heading", "id", "last_update", "lat", "long", "propulsion", "speed", "v_accuracy") SELECT "depth", "h_accuracy", "heading", "id", "last_update", "lat", "long", "propulsion", "speed", "v_accuracy" FROM "Datapoint_local";
DROP TABLE "Datapoint_local";
ALTER TABLE "new_Datapoint_local" RENAME TO "Datapoint_local";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
