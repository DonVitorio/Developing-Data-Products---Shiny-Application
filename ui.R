library(shiny)
shinyUI(fluidPage(
  titlePanel("BMI Calculator"),
  sidebarLayout(position = 'right',
    sidebarPanel(
      h4('Enter Your Height'),
      numericInput('feet', '(feet)', 0, min = 0, max = 8, step = 1),
      numericInput('inches', '(inches)', 0, min = 0, max = 11, step = 1),
      h4('Enter Your Weight'),
      numericInput('pounds', '(pounds)', 0, min = 0, max = 8, step = 1),
      actionButton('goButton','Compute BMI')
    ),
    mainPanel(
      tabsetPanel(
        tabPanel(' Instructions', h4('Execute in order'), 
                 p('1 - Enter your height in feet and inches.'),
                 p('2 - Enter your weight in pounds.'), 
                 p('3 - Click Compute BMI.'),
                 p('4 - Check your results in next tab.')),
        tabPanel('Your calculated BMI',
                 h3('Categories:'),
                 HTML('<table border = 1 >
                      <tr>
                      <th>Category</th>
                      <th>BMI range - kg/m<sup>2</sup></th>
                      <th>BMI Prime</th>
                      </tr>
                      <tr>
                      <td>Very severely underweight</td>
                      <td>less than 15</td>
                      <td>less than 0.60</td>
                      </tr>
                      <tr>
                      <td>Severely underweight</td>
                      <td>from 15.0 to 16.0</td>
                      <td>from 0.60 to 0.64</td>
                      </tr>
                      <tr>
                      <td>Underweight</td>
                      <td>from 16.0 to 18.5</td>
                      <td>from 0.64 to 0.74</td>
                      </tr>
                      <tr>
                      <td>Normal (healthy weight)</td>
                      <td>from 18.5 to 25</td>
                      <td>from 0.74 to 1.0</td>
                      </tr>
                      <tr>
                      <td>Overweight</td>
                      <td>from 25 to 30</td>
                      <td>from 1.0 to 1.2</td>
                      </tr>
                      <tr>
                      <td>Obese Class I (Moderately obese)</td>
                      <td>from 30 to 35</td>
                      <td>from 1.2 to 1.4</td>
                      </tr>
                      <tr>
                      <td>Obese Class II (Severely obese)</td>
                      <td>from 35 to 40</td>
                      <td>from 1.4 to 1.6</td>
                      </tr>
                      <tr>
                      <td>Obese Class III (Very severely obese)</td>
                      <td>over 40</td>
                      <td>over 1.6</td>
                      </tr>
                      </table>
                      '),
                 br(),
                 h3('Your calculated BMI is :'),
                 textOutput('textBMI'))
      )
    )
  )
))
