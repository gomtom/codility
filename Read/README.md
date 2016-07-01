## Task

The Redbubble system has many digital images, often taken with a camera. We have exported EXIF data from a selection of these images. This data is available via an API.

Create a set of static HTML files to allow a user to browse the images contained in the API.

Create a batch processor that takes data from the API, and produce a single HTML page (based on this output template), for each camera make, camera model and also an index page.

The index page must contain:

Thumbnail images for the first 10 work;
* Navigation that allows the user to browse to all camera makes.
* Each camera make HTML page must contain:

Thumbnail images of the first 10 works for that camera make;
* Navigation that allows the user to browse to the index page and to all camera models of that make.
* Each camera model HTML page must contain:

Thumbnail images of all works for that camera make and model;
* Navigation that allows the user to browse to the index page and the camera make.
* The batch processor should take the API URL and the output directory as parameters.

The data returned from the API contains a small sample set of works.

## Development Environment

This application was developed on Mac OS X El Capitan (10.11.5) using Ruby version 2.2.1

## Installation

To install dependencies
* Navigate `cd` to the root of this directory 
Run `bundle install` 

## Usage

To process a batch of works data run the following command 
`ruby app/run_batch.rb <API URL> <Output Directory>`
For example `ruby app/run_batch.rb "http://take-home-test.herokuapp.com/api/v1/works.xml" "html_pages"`
* The API URL must contain valid xml data
* The directory doesn't have to exist before running the processor 
* If the directory already exits, it must be inside this root directory 

## Testing

Run `bundle exec rspec` or `bundle exec rspec spec --format documentation` to format a full readable output 


## Design

I started the development process by first breaking the task down into the following steps:

	* Import and Parse the works.xml file into a hash
		- Ive had a fair bit of experience using the hash data structure in Ruby and therefore felt most comfortable manipulating the data in that way
		- I decided to used the xml-simple gem to do the actual parsing as its very configurable
		- I was therefore able to easily parse the xml data into a hash with symbolised keys

	* Process the data into models for works, camera make, camera model
		- Extracting only what was needed from the works.xml file
		- Separating the data into these three classes allowed me to focus on exactly what attributes i needed for generating each set of HTML pages

		- In order to deal with works that had an image but no make or model data (EXIF data) i decided to create an uncategorised navigation tab to allow users to still browse those images.
		- The result is a No Make and No Model tag that allows the user to still access those works

	* Generate the HTML pages
		- Using an ERB template seemed to be the simplest approach
		- This would allow me to use the supplied HTML template and add small pieces of ruby code inline
		- This was the first time ive been exposed to this process and i therefore relied on tutorials such as this one http://www.stuartellis.eu/articles/erb/

## Error Handling 
The main cases where i wanted there to be some error handling were:
* No input arguments given
  - No API URL 
  - No directory
* Empty xml file or another file type
* No EXIF data
* Xml data given but with no images

## Contributors

Thomas Harrold 2016


