# Configuring a SQL Plugin

The customer may have machine data that is already being aggregated into a SQL datastore. The preferred handoff to Sight Machine is through a FactoryTX plugin that receives the SQL data, parses it into the JSON format, and saves it so it can be transmitted properly.

## SQL FTX Configuration File Sample

&lt;**Need from Harry/Ziyad.&gt;**

## Creating a Polling Query and Adding Keywords

You will want the design of the SQL query to be as efficient as possible.

For example:

* Wherever possible, you want to use an index in your WHERE function to reduce load.

* In order to see if you are using an index, you may want to test you query using the EXPLAIN function. Use these references:

  * **PostgreSQL:**  
    [https://www.postgresql.org/docs/9.1/static/sql-explain.html](https://www.postgresql.org/docs/9.1/static/sql-explain.html)

  * **MySQL:**  
    [https://dev.mysql.com/doc/refman/5.7/en/explain.html](https://dev.mysql.com/doc/refman/5.7/en/explain.html)

  * **MS SQL Server:**  
    [https://www.red-gate.com/simple-talk/sql/performance/execution-plan-basics/](https://www.red-gate.com/simple-talk/sql/performance/execution-plan-basics/)

### Resetting the Cache.json File

If you need to reset the database, you may want to adjust or delete thecache.jsonfile. 

**&lt;insert snipped of example cache.json&gt;**

**&lt;Commands to delete json&gt;**

