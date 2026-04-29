# HTML Cheat Sheet

## Basic Structure

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">        <!-- Character encoding -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Responsive design -->
    <title>Document Title</title> <!-- Page title -->
</head>
<body>
    <!-- Page content goes here -->
</body>
</html>
```

## Headings

```html
<h1>Main heading</h1>
<h2>Subheading</h2>
<h3>Section heading</h3>
<h4>Subsection heading</h4>
<h5>Minor heading</h5>
<h6>Smallest heading</h6>
```

## Links & Images

```html
<a href="https://example.com">Visit Example</a>        <!-- Hyperlink -->
<img src="image.jpg" alt="Description" width="300">   <!-- Image -->
```

## Lists

```html
<!-- Ordered list -->
<ol>
    <li>First item</li>
    <li>Second item</li>
</ol>

<!-- Unordered list -->
<ul>
    <li>Item one</li>
    <li>Item two</li>
</ul>
```

## Tables

```html
<table>
    <thead>
        <tr>
            <th>Header 1</th>
            <th>Header 2</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Data 1</td>
            <td>Data 2</td>
        </tr>
    </tbody>
</table>
```

## Forms

```html
<form action="/submit" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email">

    <input type="submit" value="Submit">
</form>
```

## Multimedia

```html
<!-- Audio -->
<audio controls>
    <source src="audio.mp3" type="audio/mpeg">
    Your browser does not support audio.
</audio>

<!-- Video -->
<video width="400" controls>
    <source src="video.mp4" type="video/mp4">
    Your browser does not support video.
</video>
```

## Semantic Elements

```html
<header>Header section</header>
<nav>Navigation links</nav>
<main>Main content</main>
<article>Independent content</article>
<section>Section of content</section>
<aside>Sidebar content</aside>
<footer>Footer section</footer>
```

## Inline Elements

```html
<span>Inline text</span>
<a href="#">Inline link</a>
<strong>Bold text</strong>
<em>Italic text</em>
<code>Inline code</code>
```

## Common one-liners

```html
<!-- Link to external CSS -->
<link rel="stylesheet" href="styles.css">

<!-- Link to external JS -->
<script src="script.js"></script>

<!-- Meta tags -->
<meta name="description" content="Page description">
<meta name="author" content="Your Name">
```
