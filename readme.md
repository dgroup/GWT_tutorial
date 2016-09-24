[GWT Tutorial](http://www.gwtproject.org/doc/latest/tutorial/index.html)

#### Option A: Import your project into Eclipse --
If you use Eclipse, you can simply import the generated project into Eclipse.
We've tested against Eclipse 3.4 and 3.5.  Later versions will likely also
work, earlier versions may not.

If the directory containing this file does not have a .classpath or .project
file, generate them by running 'ant eclipse.generate'

In Eclipse, go to the File menu and choose:

  File -> Import... -> Existing Projects into Workspace

  Browse to the directory containing this file,
  select "StockWatcher".
  
  Be sure to uncheck "Copy projects into workspace" if it is checked.
  
  Click Finish.
  
You can now browse the project in Eclipse.

To launch your web app in GWT development mode, go to the Run menu and choose:

  Run -> Open Debug Dialog...

  Under Java Application, you should find a launch configuration
  named "StockWatcher".  Select and click "Debug".

  You can now use the built-in debugger to debug your web app in development mode.

If you supplied the junit path when invoking webAppCreator, you should see
launch configurations for running your tests in development and production
mode.

#### Option B: Build from the command line with Ant --

If you prefer to work from the command line, you can use Ant to build your
project. (http://ant.apache.org/)  Ant uses the generated 'build.xml' file
which describes exactly how to build your project.  This file has been tested
to work against Ant 1.7.1.  The following assumes 'ant' is on your command
line path.

To run development mode, just type 'ant devmode'.

To use Super Dev Mode, you will need to run two commands in separate
windows. Run 'ant devmode' and also 'ant superdevmode'.

To compile your project for deployment, just type 'ant'.

To compile and also bundle into a .war file, type 'ant war'.

If you supplied the junit path when invoking webAppCreator, you can type 'ant
test' to run tests in development and production mode.
 
For a full listing of other targets, type 'ant -p'.

#### Option C: Using another IDE --

GWT projects can be run in other IDEs as well, but will require some manual
setup.  If you go this route, be sure to:

* Have your IDE build .class files into 'war/WEB-INF/classes'.
* Add gwt-user.jar and gwt-dev.jar to your project build path.
* When creating a launch configuration, add a classpath entry for your 'src'
  folder (this is somewhat unusual but GWT needs access to your source files).

If you get stuck, try to mimic what the Ant 'build.xml' would do.

#### Option D: Using Maven --

If you have generated your project with the option '-maven', you have a 'pom.xml'
file ready to use. Assuming you have 'maven2' installed in your system, 'mvn' is 
in your path, and you have access to maven repositories, you should be able to run:

mvn clean         # delete temporary stuff
mvn test          # run all the tests (gwt and junit)
mvn gwt:run       # run development mode
mvn gwt:compile   # compile to javascript
mvn package       # generate a .war package ready to deploy

For more information about other available goals, read maven and gwt-maven-plugin 
documentation (http://maven.apache.org, http://mojo.codehaus.org/gwt-maven-plugin)  
