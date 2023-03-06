# Jekyll Theme Nixer

The even more barebones cousin of the barebones theme [<q>Nix</q>](https://github.com/michaelnordmeyer/jekyll-theme-nix) for [Jekyll](https://github.com/jekyll/jekyll), which doesn't need any dependencies except `jekyll-redirect-from`, if you want to redirect pages. It is optimized for fast build speeds as well.

Its purpose is to be a hard-core minimalistic, single-author theme while not displaying anything more than just the content of posts and a list of posts.

It also changes as little as possible from the default browser settings to improve legibility.

[Demo](https://jekyll-theme-nixer.michaelnordmeyer.com/)

It is meant for people, who are aware that nobody is using RSS feeds anymore. Either because they don't know what they are or how to use them, or they replaced Google Reader with Social Media. So all visitors are coming from search engines – let's be honest, Google – and won't read other posts, unless they are linked in the post itself.

And people coming from hacker news or related sites know how to change the URL in the browser's address bar.

If you think this goes too far, use the above mentioned [Jekyll theme <q>Nix</q>](https://github.com/michaelnordmeyer/jekyll-theme-nix) instead.

## Limited Features

- Dark mode, because we want to be respectful
- Posts, but no backlink to homepage
- No Pages, except custom error pages
- No visible authors, dates, categories, or tags
- No header or footer
- No pagination for the home page
- No feed.xml
- A sitemap.xml, because search engines should index us
- No semantic info like Open Graph, Twitter cards, JSON-LD, or Microdata

## Feature Creep and Bloat

To have titles with proper spelling in the post list, you have to have a `title` in your front matter. You can leave it out, but then some characters cannot be displayed, most notably the apostrophe (`'`) or anything, which cannot reasonably put in the post's filename.

Rest assured, this is the only bloat, as we already removed the date with the rest from the front matter, because it can reliably taken from the post's filename. And who has time to post more than once a day, anyway.

## Minutiae

### Default Colors

The default browser link colors don't look great, if they're inverted in dark mode, just like white is inverted to black for the background:

- Link: <span style="background-color: white; color: #0000ee">&nbsp;#0000ee&nbsp;</span>, inverted <span style="background-color: black; color: #ffff11">&nbsp;#ffff11&nbsp;</span>
- Link visited: <span style="background-color: white; color: #551a8b">&nbsp;#551a8b&nbsp;</span>, inverted <span style="background-color: black; color: #aae574">&nbsp;#aae574&nbsp;</span>

Therefore, they're set to somewhat lighter versions of the default colors.

- Link: <span style="background-color: white; color: #0000ee">&nbsp;#0000ee&nbsp;</span>, inverted <span style="background-color: black; color: lightskyblue">&nbsp;lightskyblue&nbsp;</span>
- Link visited: <span style="background-color: white; color: #551a8b">&nbsp;#551a8b&nbsp;</span>, inverted <span style="background-color: black; color: plum">&nbsp;plum&nbsp;</span>

### Favicon

The favicon is currently `icon.webp` for the light mode, and there's also a dark variant `icon-dark.webp`.

### Nixer?

<q>Nix</q> is the grammatically incorrect form of the German <q>nichts</q>, which in English means <q>nothing</q>. It's colloquially used to stress the nothingness. <q>Nixer</q> is the even more grammatically incorrect comparative of that, which colloquially may or may not being used at all.

Or, if you will, it could be UNIX without the <q>U</q>, because of the theme's somewhat archaic properties, but even more archaic.

## Installation

Installation from Gem is recommended, but using a remote theme is also possible, even though it will increase build time a little, depending on your internet connection.

### Installation from Gem

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-nixer"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-nixer
```

Make sure that this is the only `theme:` in `_config.yml`. Afterwards run `bundle install`.

### Installation as Remote Theme

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-remote-theme"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
remote_theme: michaelnordmeyer/jekyll-theme-nixer
```

Make sure that this is the only `remote_theme:` in `_config.yml`, and that there are no other `theme:`.

Finally, add `jekyll-remote-theme` to your plugin section in `_config.yml` as well.

## Sitemap.xml

A s`itemap.xml` is already included in the theme and doesn't need a dependency to `jekyll-sitemap`. For a standard Jekyll installation, it works out-of-the-box.

If hosted with the Github pages plugin, this plugin is already included and will automatically be used instead. To overwrite this, the file has to be copied manually from the theme's repository root to the site's repository root.
