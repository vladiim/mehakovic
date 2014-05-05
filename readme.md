# Mehakovic

Personal consulting site.

# Dependencies

* Juicer compiles css/js files ensure [all juicer's dependencies are installed](https://github.com/cjohansen/juicer)
* Deployment
	- [S3 website](https://github.com/laurilehmijoki/s3_website)
	- [S3CMD](http://s3tools.org/s3cmd)
		* pip install --upgrade setuptools

***

# Deployment

* Run `rake deploy:marketing`

***

# Compilation

* For asset compilation run `guard`
* For static site compilation run `rake compile:marketing`

***

# Asset pre-compilation

Rules for asset pre-compilation are defined in `./Guardfile`.

* Edit stylesheets using SASS in `./assets/sass/*`, ensure new files are declared in `./assets/sass/import.css` with `@import 'my_filename.scss';`
* Edit client scripts using Coffeescript in `./assets/coffee/*`, ensure new files are declared in `./assets/coffee/import.coffee` with `// @depend my_filename.js`