Collect the wait times at the Mass. DMV offices, see
The Massachusetts DMV offices report wait times, see for example:
   http://www.mass.gov/qrmv/watertow.shtm

The ruby script doit.rb grabs that page and extracts the time to wait for "licensing."

It then posts that time to this fire and forget charting service <http://rifgraf.heroku.com/> and the result can be seen here: http://rifgraf.heroku.com/graphs/dmv_watertown

You will need to:
 - ruby
 - internet access
 - the rest-client gem; e.g. sudo gem install rest-client
 - Then modify the file office.rb so it names the DMV office you want to monitor.
- to setup the crontab or polling appropriately

You might do something like:

   while [ 1 ] ; do ./doit.rb ; sleep 300 ; done

It's kind of silly to collect data when the office is closed.

The script clear.rb will discard your chart.
