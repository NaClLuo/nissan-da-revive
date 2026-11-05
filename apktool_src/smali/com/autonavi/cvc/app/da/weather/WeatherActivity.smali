.class public Lcom/autonavi/cvc/app/da/weather/WeatherActivity;
.super Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;
.source "WeatherActivity.java"


# static fields
.field private static REQUEST_CITY:I


# instance fields
.field private airQualityImgGreen:Landroid/widget/ProgressBar;

.field private back:Landroid/widget/Button;

.field backClickListener:Landroid/view/View$OnClickListener;

.field private carWashIndex:[I

.field private cityIcon:Landroid/widget/ImageView;

.field private cityTxt:Landroid/widget/TextView;

.field private curDate:Landroid/widget/TextView;

.field private curTemp:Landroid/widget/TextView;

.field private curWeatherIcon:Landroid/widget/ImageView;

.field private curWeatherTxt:Landroid/widget/TextView;

.field private curWind:Landroid/widget/TextView;

.field private refresh:Landroid/widget/Button;

.field refreshClickListener:Landroid/view/View$OnClickListener;

.field weatherViewModel:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

.field private weathersInfo:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x384

    sput v0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->REQUEST_CITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 33
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;-><init>()V

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->carWashIndex:[I

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->weathersInfo:[[I

    .line 172
    new-instance v0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$5;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$5;-><init>(Lcom/autonavi/cvc/app/da/weather/WeatherActivity;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->refreshClickListener:Landroid/view/View$OnClickListener;

    .line 181
    new-instance v0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$6;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$6;-><init>(Lcom/autonavi/cvc/app/da/weather/WeatherActivity;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->backClickListener:Landroid/view/View$OnClickListener;

    return-void

    .line 44
    :array_0
    .array-data 4
        0x7f060042
        0x7f060043
        0x7f060044
        0x7f060045
        0x7f060046
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x7f060049
        0x7f06004a
        0x7f06004b
        0x7f06004c
    .end array-data

    :array_2
    .array-data 4
        0x7f06004d
        0x7f06004e
        0x7f06004f
        0x7f060050
    .end array-data

    :array_3
    .array-data 4
        0x7f060051
        0x7f060052
        0x7f060053
        0x7f060054
    .end array-data
.end method

.method static synthetic access$000(Lcom/autonavi/cvc/app/da/weather/WeatherActivity;Lcom/autonavi/cvc/app/da/weather/model/IWeather;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/WeatherActivity;
    .param p1, "x1"    # Lcom/autonavi/cvc/app/da/weather/model/IWeather;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->showWeatherInfo(Lcom/autonavi/cvc/app/da/weather/model/IWeather;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->REQUEST_CITY:I

    return v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->curWeatherIcon:Landroid/widget/ImageView;

    .line 83
    const v0, 0x7f060040

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->curDate:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->curTemp:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->curWeatherTxt:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f06003f

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->curWind:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f060048

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->airQualityImgGreen:Landroid/widget/ProgressBar;

    .line 88
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->cityTxt:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->cityIcon:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->cityIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$3;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$3;-><init>(Lcom/autonavi/cvc/app/da/weather/WeatherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->cityTxt:Landroid/widget/TextView;

    new-instance v1, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$4;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$4;-><init>(Lcom/autonavi/cvc/app/da/weather/WeatherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->refresh:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->refresh:Landroid/widget/Button;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->refreshClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->back:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->back:Landroid/widget/Button;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->backClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method private showWeatherInfo(Lcom/autonavi/cvc/app/da/weather/model/IWeather;)V
    .locals 11
    .param p1, "weather"    # Lcom/autonavi/cvc/app/da/weather/model/IWeather;

    .prologue
    .line 115
    if-eqz p1, :cond_3

    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->weathersInfo:[[I

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    if-ge v1, v8, :cond_3

    .line 117
    if-nez v1, :cond_2

    .line 120
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->cityTxt:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->curWeatherIcon:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getWeatherImgId(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 125
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->curWeatherTxt:Landroid/widget/TextView;

    invoke-interface {p1, v1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getWeather(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->curTemp:Landroid/widget/TextView;

    invoke-interface {p1, v1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getTemp(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->curWind:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getWindDirection(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 131
    invoke-interface {p1, v1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getWindPower(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 130
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->curDate:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getDate(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1, v1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getWeek(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    sget-object v8, Lcom/autonavi/cvc/app/da/data/CommonConstant;->carwashIndex:Ljava/util/Map;

    invoke-interface {p1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getWashCarInfo()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 137
    .local v0, "carWash":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->carWashIndex:[I

    array-length v8, v8

    if-ge v3, v8, :cond_1

    .line 138
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->carWashIndex:[I

    aget v8, v8, v3

    invoke-virtual {p0, v8}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 139
    .local v2, "imageView":Landroid/widget/ImageView;
    if-ge v3, v0, :cond_0

    .line 140
    const v8, 0x7f020038

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 137
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 142
    :cond_0
    const v8, 0x7f020037

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 146
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_1
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->airQualityImgGreen:Landroid/widget/ProgressBar;

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    .line 147
    .local v4, "max":I
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->airQualityImgGreen:Landroid/widget/ProgressBar;

    invoke-interface {p1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getAQI()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 116
    .end local v0    # "carWash":I
    .end local v3    # "j":I
    .end local v4    # "max":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 150
    :cond_2
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->weathersInfo:[[I

    add-int/lit8 v9, v1, -0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {p0, v8}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 151
    .restart local v2    # "imageView":Landroid/widget/ImageView;
    invoke-interface {p1, v1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getWeatherImgId(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 153
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->weathersInfo:[[I

    add-int/lit8 v9, v1, -0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {p0, v8}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 154
    .local v5, "textView":Landroid/widget/TextView;
    invoke-interface {p1, v1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getWeek(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->weathersInfo:[[I

    add-int/lit8 v9, v1, -0x1

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-virtual {p0, v8}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 157
    .local v6, "textView2":Landroid/widget/TextView;
    invoke-interface {p1, v1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getWeather(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->weathersInfo:[[I

    add-int/lit8 v9, v1, -0x1

    aget-object v8, v8, v9

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {p0, v8}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 160
    .local v7, "textView3":Landroid/widget/TextView;
    invoke-interface {p1, v1}, Lcom/autonavi/cvc/app/da/weather/model/IWeather;->getTemp(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 164
    .end local v1    # "i":I
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "textView2":Landroid/widget/TextView;
    .end local v7    # "textView3":Landroid/widget/TextView;
    :cond_3
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 193
    sget v1, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->REQUEST_CITY:I

    if-ne p1, v1, :cond_0

    .line 194
    if-eqz p3, :cond_0

    .line 195
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cityCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "cityCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->weatherViewModel:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    invoke-virtual {v1, p0, v0}, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->getWeatherInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    .end local v0    # "cityCode":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 203
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->initView()V

    .line 62
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->weatherViewModel:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    .line 63
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->weatherViewModel:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->getWeather()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$1;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$1;-><init>(Lcom/autonavi/cvc/app/da/weather/WeatherActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 70
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->weatherViewModel:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->getInfo()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$2;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$2;-><init>(Lcom/autonavi/cvc/app/da/weather/WeatherActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 77
    const-string v0, "\u6b63\u5728\u52aa\u529b\u8bf7\u6c42\u8bf7\u7a0d\u5019"

    invoke-static {p0, v0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->createProgressDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->weatherViewModel:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    invoke-virtual {v0, p0}, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->getCurrentLocationWeatherInfo(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onDestroy()V

    .line 170
    return-void
.end method
