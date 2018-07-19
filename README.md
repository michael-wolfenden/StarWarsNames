# StarWars Names

[![appveyor](https://ci.appveyor.com/api/projects/status/github/michael-wolfenden/StarWarsNames?svg=true)](https://ci.appveyor.com/project/michael-wolfenden/StarWarsNames)
[![tests](https://img.shields.io/appveyor/tests/michael-wolfenden/StarWarsNames.svg)](https://ci.appveyor.com/project/michael-wolfenden/StarWarsNames)
[![nuget](https://img.shields.io/nuget/v/StarWars.Names.svg)](https://www.nuget.org/packages/StarWars.Names/)
[![github license](https://img.shields.io/github/license/michael-wolfenden/StarWarsNames.svg)](https://github.com/michael-wolfenden/StarWarsNames/blob/master/LICENSE)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)

Get random names from Star Wars characters.

![starwars-names](assets/logo.png)

## Motivation
I guess you _could_ use this to generate random Star Wars character names, however the *real* motivation for this library is to serve as a reference implementation.

### Features

- [x] Automatic Versioning, Publishing and Changelog generation using [semantic-release](https://github.com/semantic-release/semantic-release)
- [x] [SourceLink](https://github.com/dotnet/sourcelink/) support
- [x] Performs both Windows and Linux builds using [AppVeyor](https://www.appveyor.com/) and [Cake](https://cakebuild.net/)
- [x] Testing via [xUnit.net](https://xunit.github.io/)
- [x] [EditorConfig](https://docs.microsoft.com/en-us/visualstudio/ide/create-portable-custom-editor-options) support

## Installation

This package is distributed via NuGet:

```
Install-Package StarWars.Names
```

## Usage
```csharp
var starWarsNames = new StarWarsNames();

var allNames = starWarsNames.All();
var randomName = starWarsNames.Random();
var threeRandomNames = starWarsNames.Random(3);
```

## Credits
This is a port of the [original project](https://github.com/kentcdodds/starwars-names) by [Kent C. Dodds](https://kentcdodds.com/)

Logo created by [Filipe de Carvalho](
https://www.behance.net/gallery/17998561/Star-Wars-Long-Shadow-Flat-Design-Icons)

## License
MIT © [Michael Wolfenden](https://michael-wolfenden.github.io/)
