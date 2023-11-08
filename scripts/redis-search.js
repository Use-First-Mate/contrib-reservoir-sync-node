/* eslint-disable */
require("dotenv/config");
const redis = require("redis");

const CONNECTION_URL = process.env.REDIS_URL;

async function main() {
  const client = redis.createClient({
    url: CONNECTION_URL,
  });
  console.log("hey");
  await client.connect();
  const listKey = "sales-queue-priority:1";
  const searchContract = "0x6bd0e7d2227c215bb9f46dd300326e56d519a66c";

  const items = await client.lRange(listKey, 0, -1);
  const foundItems = items
    .map((item, index) => ({ ...JSON.parse(item), index }))
    .filter((item) => item.contract === searchContract);

  if (foundItems.length > 0) {
    console.log("Contract found in the following items:", foundItems);
  } else {
    console.log("Contract not found in the list.");
  }

  await client.quit();
  /* 
    await client.connect();
*/
}

main()
  .then(() => console.log("done"))
  .catch(console.error);
