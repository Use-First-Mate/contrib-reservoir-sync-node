-- CreateIndex
CREATE INDEX "asks_collection_id_idx" ON "asks"("collection_id");

-- CreateIndex
CREATE INDEX "bids_collection_id_idx" ON "bids"("collection_id");

-- CreateIndex
CREATE INDEX "firstmate_collection_id_collection_id_idx" ON "firstmate_collection_id"("collection_id");

-- CreateIndex
CREATE INDEX "sales_collection_id_idx" ON "sales"("collection_id");
