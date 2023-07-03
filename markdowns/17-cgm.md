# CGM dataset  

Continuous Glucose Monitoring (CGM) measures glucose levels in a continuous manner.  <br>
This measure provides information on blood glucose control and glucose variability and could be used to monitor patients with diabetes.

Each 14-day continuous measure is termed a single CGM-connection.

Using the glucose measured in the CGM connection we can calculate summary features (which was done using the iglu package) summarizing information on glucose control and variability. <br>
These were calculated for the entire CGM connection as well as for daily segments of the data.

The actual glucose measures are stored in multiple parquet files, each file holds the glucose measures for a single CGM connection. <br>

### Data availability:
The metadata and summary features are stored in 2 main statistics parquet files: `main.parquet`, `daily_iglu.parquet`.