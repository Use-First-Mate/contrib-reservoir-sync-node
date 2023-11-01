-- CreateTable
CREATE TABLE "firstmate_collection_id" (
    "id" SERIAL NOT NULL,
    "firstmate_id" TEXT NOT NULL,
    "collection_id" TEXT NOT NULL,
    "chain_id" TEXT NOT NULL,
    "created_at" TIMESTAMP NOT NULL,

    CONSTRAINT "firstmate_collection_id_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "firstmate_collection_id_firstmate_id_collection_id_chain_id_key" ON "firstmate_collection_id"("firstmate_id", "collection_id", "chain_id");
