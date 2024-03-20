The steps required to replicate this setup.

1. Create the `.npmrc` file with the contents `@fa-switch-sharedservices:registry=https://npm.pkg.github.com`

2. Open a terminal for the root of the application.

3. Login to the package registry to install the package. Instructions can be found [here](https://elements-docs.fa-switch.com/articles/getting-started).

4. Run the command `npm i @fa-switch-sharedservices/web-elements` and/or `npm i @fa-switch-sharedservices/charting` to also use the charting library.

5. Both libraries contain assets that will need to exist within the project.

The assets for the the web elements library will be in the `node_modules/@fa-switch-sharedservices/web-elements/assets` directory.
The assets for the charting library will be in the `node_modules/@fa-switch-shared-services/charting/assets` directory.

By default the components will expect this served from the `/assets` path off the root of the application.

In this demo I am just copying this to the root of the project

6. For legacy app such as an ASP.Net web forms app the recommended way to use the to import the precompiled script.

The web elements script is located at `node_modules/@fa-switch-shared-services/web-elements/scripts/charting.js`
The charting script is located at `node_modules/@fa-switch-shared-services/charting/scripts/charting.js`

Both scripts are not needed. If you need to use charts, only include the charting as it will contain the elements scripts in it's bundle. If the charts are not needed use the web-elements.js script.

In this demo I am copying these files to the Scripts directory.

These file can't be loaded with a script tag, they have to be loaded asynchronously after the translations are configured. There is an example of that in the Site.Master markup file.

I haven't gotten build integration to work yet, but it would be along the lines of adding something like this in the project file.

```
  <Target Name="AfterBuild">
    <Copy
      Condition="Exists('node_modules\@fa-switch-sharedservices\web-elements\scripts\web-elements.js')"
      SourceFiles="node_modules\@fa-switch-sharedservices\web-elements\scripts\web-elements.js"
      DestinationFiles="$(OutputPath)\Scripts"
     >
    </Copy>
    <Copy
      Condition="Exists('node_modules\@fa-switch-sharedservices\chartings\scripts\charting.js')"
      SourceFiles="node_modules\@fa-switch-sharedservices\web-elements\scripts\charting.js"
      DestinationFiles="$(OutputPath)\Scripts"
    >
    </Copy>
    <ItemGroup Condition="Exists('node_modules\@fa-switch-sharedservices\web-elements\assets')">
      <WebElementsAssets Include="node_modules\@fa-switch-sharedservices\web-elements\assets\**\*.*"/>
    </ItemGroup>

    <Copy
      SourceFiles="@(WebElementsAssets)"
      DestinationFiles="$(OutputPath)\assets\%(RecursiveDir)"
    >
    </Copy>
    <ItemGroup Condition="Exists('node_modules\@fa-switch-sharedservices\charting\assets')">
      <ElementsChartingAssets Include="node_modules\@fa-switch-sharedservices\web-elements\assets\**\*.*"/>
    </ItemGroup>
    <Copy
      SourceFiles="@(ElementsChartingAssets)"
      DestinationFiles="$(OutputPath)\assets\%(RecursiveDir)"
    >
    </Copy>
  </Target>
```
