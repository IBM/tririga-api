# OSLC Requests Cheatsheet

## GET requests

- TRIRIGA Login using OSLC: <br/>
http://localhost:8001/oslc/login

- Base OSLC command: <br/>
http://localhost:8001/oslc/

- List of Service Providers: <br/>
http://localhost:8001/oslc/sp

- Query Capability: <br/>
http://localhost:8001/oslc/spq/triAllWorkTasksQC

- Shapes (Resource): <br/>
http://localhost:8001/oslc/shapes/triWorkTaskRS

- Retrieve full record: <br/>
http://localhost:8001/oslc/so/triWorkTaskRS/132633803 (spec_id)

- View all actions on a record: <br/>
http://localhost:8001/oslc/system/action/triWorkTaskRS/132633803 (spec_id)


## SPARQL based GET requests

- Authentication: <br/>
http://localhost:8001/oslc?USERNAME=system&PASSWORD=admin <br/>
http://localhost:8001/oslc/logout

- Retrieve all records: <br/>
http://localhost:8001/oslc/spq/triAllWorkTasksQC?oslc.select=*

- Retrieve selected fields: <br/>
http://localhost:8001/oslc/spq/triAllWorkTasksQC?oslc.select=dcterms:title,spi_wm:status,dcterms:description

- Retrieve selected fields from Linked Resources: <br/>
http://localhost:8001/oslc/spq/triAllWorkTasksQC?oslc.select=dcterms:title,spi_wm:status,spi:LinkedBuilding{dcterms:title,spi:triAreaNU,spi:LinkedFloor{dcterms:title}}

- Adding filters (oslc.where): <br/>
http://localhost:8001/oslc/spq/triAllWorkTasksQC?oslc.select=dcterms:title,spi_wm:status,dcterms:description&oslc.where=dcterms:description!="null"

- Adding multiple oslc.where clauses: <br/>
http://localhost:8001/oslc/spq/triAllWorkTasksQC?oslc.select=dcterms:title,spi_wm:status,dcterms:description&oslc.where=dcterms:description!="null"%20and%20spi_wm:status="Active"

- Adding wildcards: <br/>
http://localhost:8001/oslc/spq/triAllWorkTasksQC?oslc.select=dcterms:title,spi_wm:status,dcterms:description&oslc.where=dcterms:description="%25sam%25" <br/>
(ASCII value for % is %25)

- Ordering records: <br/>
http://localhost:8001/oslc/spq/triAllWorkTasksQC?oslc.select=dcterms:title,spi_wm:schedfinish,dcterms:description&oslc.where=dcterms:description="null"&oslc.orderBy=%2Bspi_wm:schedfinish <br/>
(ASCII value for + is %2B, - is %2D)

- Adding Date Filters: <br/>
http://localhost:8001/oslc/spq/triAllWorkTasksQC?oslc.select=dcterms:title&oslc.where=spi:triModifiedSY%3E"2020-02-11" <br/>
(ASCII value for > is %3E, < is %3C)



## POST Requests

- Create Work Task record: <br/>
http://localhost:8001/oslc/so/triWorkTaskCF 

  Body: <br/>

  ```json
  {
    "spi:triTaskTypeCL": "Corrective",
    "dcterms:title": "Sample01",
    "spi:action": "Create Draft",
  }
  ```

- Create Work Task and Comment record with association: <br/>
http://localhost:8001/oslc/so/triWorkTaskCF 

  Body:

  ```json
  {
    "spi:triTaskTypeCL": "Corrective",
    "dcterms:title": "Sample02",
    "spi:action": "Create Draft",
    "spi:triAssociatedCommentsLR": 
    [
      {
        "spi:triCommentTX": "This is a comment.",
        "spi:triCommentTypeLI":"E-mail",
        "spi:action": "Create"
      },
      {
       "spi:triCommentTX": "This is another comment.",
       "spi:triCommentTypeLI":"E-mail",
       "spi:action": "Create"
      }
    ]
  }
  ```

- Create Work Task record and associate with existing record: <br/>
http://localhost:8001/oslc/so/triWorkTaskCF 

  Body: <br/>

  ```JSON
  {
    "spi:triTaskTypeCL": "Corrective",
    "dcterms:title": "Sample03",
    "spi:action": "Create Draft",
    "spi:triAssociatedComments": 
    [
      {
        "dcterms:identifier": "132633922" (spec_id)
      }
    ]
  }
  ```

## Update using PUT

- PUT request essentially replaces the record and only retains the info that is passed in the request. Thereby, PUT is rarely used. Read the documentation [here](https://www.ibm.com/support/knowledgecenter/en/SSHEB3_3.5.3/com.ibm.tap.doc/con_oslc/c_oslc_put_method.html).


## Update using POST - PATCH - MERGE

- POST: <br/>
http://localhost:8001/oslc/so/triWorkTaskRS/132633803

| Header Name        | Header Value|
| -------------------|-------------|
| x-method-override  | PATCH       |
| PATCHTYPE          | MERGE       |



## DELETE

- DELETE:
http://localhost:8001/oslc/so/triWorkTaskRS/132633803

## Document Integration via OSLC


- Document content (file) can downloaded by prefixing OSLC Resource with Document spec_id and /Content. e.g.
  ```
  https://localhost:8001/oslc/so/triDocumentRS/142284589/Content 
  ```

- Document content (file) can be uploaded and associated to a record by using POST with the given headers as shown.
   ```
  POST: https://localhost:8001/oslc/so/triDocumentRS/triWorkTaskRS/137313454
  ```
  Header | Value
  ---|---
  Content-Type| multipart/form-data, image/png
  authorization| Basic RE0xOkRNMDFfbWNz
  Accept| application/json
  Slug| testImage6.png
  x-document-description| Test Image 5
  x-document-meta| \ROOT\TRIRIGAAnywhere
  Properties| *
  


## Other Facts

- Pagination can be added to OSLC records using:
  ```
  ?oslc.paging=true&oslc.page=<pagenumber>&oslc.pageSize=<pagesize>
  ```

- Duration fields can be mapped as shown below.

  <img src="durationfield.jpg" width=1000><br/>

- These errors don't show up for Boolean fields because it takes *FALSE* as default. 

  <img src="oslcerror.jpg" width=1000><br/>







