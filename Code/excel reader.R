library(readxl)

loadDataFromExcel_Ydich_XnomSsubj = function(fileName, sheetName, yName="LA1and10", xName="LowIncomeTracts", numBins=3) {
  #read file/sheet
  df = read_excel(fileName, sheet=sheetName)

  #create dataset of provided field names
  df = df[c(yName, xName)]
  names(df) = c("y","s")

  df$y = as.integer(df$y)

  if (length(unique(df$s))==2) {
    df$s[df$s==0]="No"
    df$s[df$s==1]="Yes"
    df$s = as.factor(df$s)
  }
  else {
    df$s = cut(df$s,numBins)
  }
  
  return(df)  
}

loadDataFromExcel_Ydich_Xnom1subj_ProportionDiff = function(fileName, sheetName, xName1="lablack1", xName1a="TractBlack", xName2="lawhite1", xName2a="TractWhite") {
  #read file/sheet
  #fileName="DataDownload2015.xlsx"
  #sheetName="Food Access Research Atlas"
  df = read_excel(fileName, sheet=sheetName)
  df = df[(df[xName1a]>0)&(df[xName2a]>0),]
  
  #create dataset of provided field names
  df$y = 0
  df[((df[xName1]/df[xName1a]) > (df[xName2]/df[xName2a])),"y"] = 1
  df$y = as.integer(df$y)
  
  df = as.data.frame(df$y)
  return(df)  
}