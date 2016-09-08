== README
# Object-Version-Tracker

## Planning:
Thought of a scenario rather than arbitrary object types and properties to make it easier to wrap my head around.

Scenario: Simplified Inventory Management System
    - products uniquely identified with object_id
    - 2 object types: discount || normal. **Assumption:** all objects have a type
    - timestamp
    - **Assumption:** All objects allow for the same 3 properties (stock, supplier, price)
    - **Assumption:** Only 2 types of changes to object state:
      - change object_type
      - change in properties (add/delete properties, change property value)

Sample CSV file (sample.csv):
**Timestamp corresponds to 2016-09-04 06:30:0X, where X is the last digit of the timestamp**
```
object_id | object_type | timestamp  | object_changes
:-------: | :---------: | :--------: | :------------
 1        |  discount   | 1472970601 | {stock: "3", supplier: "A"}
 1        |  discount   | 1472970602 | {stock: "2"}               
 1        |  discount   | 1472970603 | {price: "1"}               
 2        |  normal     | 1472970603 | {stock: "2"}
 2        |  normal     | 1472970604 | {stock: "3", price: "4"}   
 2        |  discount   | 1472970605 | {supplier: "B"}           
 3        |  discount   | 1472970605 | {price: "3"}
 3        |  normal     | 1472970606 | {price: "4"}              
 3        |  normal     | 1472970607 | {stock: "2"}              
 ```

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
Ruby 2.3.0p0
Rails 4.2.6 (because Mongoid 5.1.4 only supports Rails 4)

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
# rails-csv-object-version
