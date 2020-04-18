# StarWars Names

### [DEPRECATED] This repository is no longer maintained
> While this project is fully functional, the dependencies are no longer up to date. You are still welcome to explore, learn, and use the code provided here.
>
> See [Reference.AzurePipelines](https://github.com/michael-wolfenden/Reference.AzurePipelines) for a better maintained version with additional features 

[![No longer maintained](https://img.shields.io/badge/Maintenance-OFF-red.svg)]
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
- [x] Performs both Windows and Linux builds using [AppVeyor](https://www.appveyor.com/) or [Azure Pipleines](https://azure.microsoft.com/en-au/services/devops/pipelines/) and [Cake](https://cakebuild.net/)
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

## Access tokens

`semantic-release` requires both a **GitHub** and **NuGet** authentication token to be made available via the `GITHUB_TOKEN` and `NUGET_TOKEN` environment variables

### GITHUB_TOKEN
This token is used to authenticate with GitHub to read repository information, publish a GitHub release and upload files.

Create a [new personal access token](https://github.com/settings/tokens/new) with following scopes:

![access token scopes](https://i.imgur.com/7Fx7G0p.png "access token scopes")

### NUGET_TOKEN
This token is used to authenticate with NuGet to push packages.

Create a [new api key](https://www.nuget.org/account/apikeys) with following scopes:

![api key scopes](https://i.imgur.com/AbOO87S.png "api key scopes")

### Using the tokens with Appveyor

Once you have both tokens, you can use [appveyor's encryption](https://ci.appveyor.com/tools/encrypt) to create [secure variables](https://www.appveyor.com/docs/build-configuration/#secure-variables) from them. You can now safely put the secure variables into `appveyor.yml` even though they are publicly visible as they are only tied to _your_ account.

### Using the tokens with Azure Pipelines

Once you have both tokens, you can add `GITHUB_TOKEN` and `NUGET_TOKEN` as [secret Pipeline variables](
https://docs.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=vsts&tabs=yaml%2Cbatch#secret-variables) in your PipeLine's settings. They will automatically be decrypted in the `azure-pipelines.yml` script.

## Credits
This is a port of the [original project](https://github.com/kentcdodds/starwars-names) by [Kent C. Dodds](https://kentcdodds.com/)

Logo created by [Filipe de Carvalho](
https://www.behance.net/gallery/17998561/Star-Wars-Long-Shadow-Flat-Design-Icons)

## License
MIT © [Michael Wolfenden](https://michael-wolfenden.github.io/)
