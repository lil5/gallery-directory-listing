# Gallery Directory Listing

Simple lightbox implementation in Apache2 `DirectoryIndex`

![screenshot_1](/screenshot_1.png)
![screenshot_2](/screenshot_2.png)
[[glightbox demo]](https://glightbox.mcstudios.com.mx/#examples)


## How to

1. Add this to your Apache2 VirtualHost file

  ```
ReadmeName /gallery/.header.html
Options +Indexes
DirectoryIndex disabled
  ```

  > For a tested config see [`/apache/example.conf`](/apache/example.conf)

2. Copy the `gallery` directory to `/var/www/`

3. Restart Apache2

## Links

<https://httpd.apache.org/docs/trunk/mod/mod_autoindex.html#headername>
<https://glightbox.mcstudios.com.mx/>
