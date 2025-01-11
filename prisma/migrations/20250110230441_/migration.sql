-- CreateTable
CREATE TABLE "Datapoint_local" (
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

-- CreateTable
CREATE TABLE "LogMessage" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "time" DATETIME NOT NULL,
    "message" TEXT NOT NULL
);
