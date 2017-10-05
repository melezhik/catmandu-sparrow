# SYNOPSIS

Simple wrapper for [Catmandu cli](https://metacpan.org/pod/distribution/Catmandu/bin/catmandu)


# INSTALL

    $ sparrow plg install catmandu

# USAGE

Basic usage:

    $ sparrow plg run catmandu  <params> -- <catmandu-params>

For example:

    $ sparrow plg run catmandu --param file=/path/to/file.json -- convert JSON to YAML

See parameters description at [Catmandu doc](https://metacpan.org/pod/distribution/Catmandu/bin/catmandu)

# Automation

By sparrow tasks:

    $ sparrow project create utils

    $ sparrow task add utils json-to-yaml catmandu

    $ sparrow task ini utils/json-to-yaml

      ---
      args: 
        - convert 
        - JSON
        - to
        - YAML

    $ sparrow task run utils/json=to-yaml --param file=/path/to/file.json


Or if you prefer remote run, use Sparrowdo:

    $ cat sparrowfile

    task-run "convert json to yaml", "catmandu", %(
      file => '/path/to/file.json',
      args => (
        ( 'convert', 'JSON', 'to', 'YAML')
      )
    );


    $ sparrowdo --host=$host # run on remote host

# Author

* The plugin maintainer is [Alexey Melezhik](https://github.com/melezhik/)



