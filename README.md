# Bricks

A library that provides Packages for the Flutter Project.

### Usage

#### - Step 1

Create a folder named "bricks" in the root of the project like this source

#### - Step 2

Copy the brick (package) you need from this source and paste it in your "bricks" folder

#### - Step 3

In pubspec.yaml, declare the newly added brick below "dependencies:" as follows

```yaml
dependencies:
  _brick_name:
    path: bricks_path

  # Examples
  _avatar:
    path: bricks/_avatar
```

### Packages

| Brick                            | Description                                           | Type     | Version | 
|:---------------------------------|:------------------------------------------------------|:---------|:--------|
| [Avatar](./bricks/_avatar)       | Custom Avatar Widget                                  | Widget   | 1.0     |
| [Button](./bricks/_button)       | Custom Button Widget                                  | Widget   | 1.0     |
| [Textfield](./bricks/_textfield) | Custom Textfield Widget                               | Widget   | 1.0     |

[//]: # (| [File]&#40;./bricks/_file&#41;           | Functions to help handle file                         | Function | beta    |)

[//]: # (| [Photo]&#40;./bricks/_file&#41;          | Functions to help handle photo from camera or gallery | Function | beta    |)