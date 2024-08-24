/*
  Warnings:

  - You are about to drop the column `last_update` on the `Datapoint_local` table. All the data in the column will be lost.
  - Added the required column `time` to the `Datapoint_local` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
ALTER TABLE "Datapoint_local" RENAME COLUMN "last_update" TO "time";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
