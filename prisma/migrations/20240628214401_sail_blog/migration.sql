-- CreateTable
CREATE TABLE "Datapoint_local" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "lat" DECIMAL NOT NULL,
    "long" DECIMAL NOT NULL,
    "speed" DECIMAL,
    "heading" DECIMAL,
    "depth" DECIMAL,
    "h_accuracy" DECIMAL,
    "v_accuracy" DECIMAL,
    "propulsion" TEXT
);

-- CreateTable
CREATE TABLE "Datapoint_uploaded" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "lat" DECIMAL NOT NULL,
    "long" DECIMAL NOT NULL,
    "speed" DECIMAL,
    "heading" DECIMAL,
    "depth" DECIMAL,
    "h_accuracy" DECIMAL,
    "v_accuracy" DECIMAL
);
