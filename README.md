This is a simple project, developed to illustrate a decent UI for a heatmap based app. All the input data used in the app is hardcoded random data, as the focus for building this app was just the UI. To pick appropriate colors, the **ColorHunt** browser extension has been used.


Description of the landing page:

The purpose of the landing page is to provide a couple of buttons which will redirect the user to temperature heat map and CO2 heat map respectively. To display the title of the app, the Flutter package **“Animated-text-kit”** has been used to provide an interactive animation. For designing the buttons, a separate dart file has been created in which the button styling is implemented. To provide an attractive button color, the **color gradients** have been used. To provide an onClick functionality to the button, the entire button container has been wrapped around an **InkWell widget**.


On clicking an appropriate button, the app displays either of these heatmaps: 

Calendar heatmap (For temperature): This heat map uses the Flutter package **"heatmap-calendar"** to display the calendar and sets the background color of the particular date according to its temperature. Various colors have been assigned to several temperatures to display cool and warm days.
General heatmap (For CO2): This heat map uses the Flutter package **“heatmap”** to display the variation in CO2 levels for a couple of months. Various shades of a single color have been used to depict CO2 ranges.

  
The screenshots are attached below:

![image](https://user-images.githubusercontent.com/76108006/202380657-74202d43-b4fd-4767-b475-5889dfc507dd.png)

![image](https://user-images.githubusercontent.com/76108006/202382677-2ca81db1-9dd9-4363-8f56-e59e160cc212.png)

![image](https://user-images.githubusercontent.com/76108006/202382885-9d1f8d17-ff32-4178-929b-563f9841ee0f.png)


