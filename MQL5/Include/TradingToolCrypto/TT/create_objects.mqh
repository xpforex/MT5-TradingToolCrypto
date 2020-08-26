#property copyright "Copyright 2020, TradingToolCrypto Corp."
#property link      "https://github.com/tradingtoolcrypto"
/*

CreateRectangle(EA_sym+"TradingViewBox_Stoploss",0,temp[0]+location,price_entry,
                   temp[0]+1000000,price_sl,
                   Stoploss_Color,TP_SL_lineThickness);

*/

bool CreateRectangle(string name,int sub_window,datetime time1,double price1,datetime time2,double price2,color bg_color,int border_width)
  {

   if(ObjectFind(0,name) != -1 )
     {
      if(ObjectCreate(0,name,OBJ_EDIT,sub_window,time1,price1,time2,price2))
        {

         ObjectSetInteger(0,name,OBJPROP_COLOR,bg_color);
         ObjectSetInteger(0,name,OBJPROP_BORDER_TYPE,BORDER_FLAT);
         ObjectSetInteger(0,name,OBJPROP_WIDTH,border_width);
         ObjectSetInteger(0,name,OBJPROP_CORNER,CORNER_LEFT_UPPER);
         ObjectSetInteger(0,name,OBJPROP_STYLE,STYLE_SOLID);
         ObjectSetInteger(0,name,OBJPROP_BACK,true);
         ObjectSetInteger(0,name,OBJPROP_SELECTABLE,0);
         ObjectSetInteger(0,name,OBJPROP_SELECTED,0);
         ObjectSetInteger(0,name,OBJPROP_HIDDEN,true);
         ObjectSetInteger(0,name,OBJPROP_ZORDER,0);

         ObjectSetInteger(0,name,OBJPROP_FILL,true);

        }

        }else{

      if(ObjectCreate(0,name,OBJ_RECTANGLE,sub_window,time1,price1,time2,price2))
        {

         ObjectSetInteger(0,name,OBJPROP_COLOR,bg_color);
         ObjectSetInteger(0,name,OBJPROP_BORDER_TYPE,BORDER_FLAT);
         ObjectSetInteger(0,name,OBJPROP_WIDTH,border_width);
         ObjectSetInteger(0,name,OBJPROP_CORNER,CORNER_LEFT_UPPER);
         ObjectSetInteger(0,name,OBJPROP_STYLE,STYLE_SOLID);
         ObjectSetInteger(0,name,OBJPROP_BACK,true);
         ObjectSetInteger(0,name,OBJPROP_SELECTABLE,0);
         ObjectSetInteger(0,name,OBJPROP_SELECTED,0);
         ObjectSetInteger(0,name,OBJPROP_HIDDEN,true);
         ObjectSetInteger(0,name,OBJPROP_ZORDER,0);
         ObjectSetInteger(0,name,OBJPROP_FILL,true);

        }

     }
   return(true);
  }
/*
ObjCreateButton("Enable_EX", false, 100 + move_UI_left, 3, 90, 15, "Setup Exchange", Red, White, 0, CORNER_RIGHT_UPPER, 8, "Arial", 0, false, OBJ_ALL_PERIODS);

*/

void CreateButton(
    string aObjName,
    bool aState,
    int aX = 30,
    int aY = 30,
    int aWidth = 100,
    int aHeight = 30,
    string aCaption = "Push Me",
    color aBgColor = Silver,
    color aTextColor = Red,
    int aWindow = 0,
    int aCorner = CORNER_LEFT_UPPER,
    int aFontSize = 8,
    string aFont = "Arial",
    long aChartID = 0,
    bool aBack = false,
    long aTimeFrames = OBJ_ALL_PERIODS)
{
  ObjectDelete(aChartID, aObjName);
  ObjectCreate(aChartID, aObjName, OBJ_BUTTON, aWindow, 0, 0);
  ObjectSetInteger(aChartID, aObjName, OBJPROP_STATE, aState);
  ObjectSetInteger(aChartID, aObjName, OBJPROP_CORNER, aCorner);
  ObjectSetInteger(aChartID, aObjName, OBJPROP_XDISTANCE, aX);
  ObjectSetInteger(aChartID, aObjName, OBJPROP_YDISTANCE, aY);
  ObjectSetInteger(aChartID, aObjName, OBJPROP_XSIZE, aWidth);
  ObjectSetInteger(aChartID, aObjName, OBJPROP_YSIZE, aHeight);
  ObjectSetInteger(aChartID, aObjName, OBJPROP_BGCOLOR, aBgColor);
  ObjectSetInteger(aChartID, aObjName, OBJPROP_COLOR, aTextColor);
  ObjectSetString(aChartID, aObjName, OBJPROP_FONT, aFont);
  ObjectSetInteger(aChartID, aObjName, OBJPROP_FONTSIZE, aFontSize);
  ObjectSetString(aChartID, aObjName, OBJPROP_TEXT, aCaption);
  ObjectSetInteger(aChartID, aObjName, OBJPROP_BACK, aBack);
  ObjectSetInteger(aChartID, aObjName, OBJPROP_TIMEFRAMES, aTimeFrames);
  ObjectSetInteger(aChartID, aObjName, OBJPROP_SELECTABLE, false);
  ObjectSetInteger(aChartID, aObjName, OBJPROP_SELECTED, false);
}