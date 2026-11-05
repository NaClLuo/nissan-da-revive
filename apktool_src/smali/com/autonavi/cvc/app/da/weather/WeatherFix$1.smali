.class Lcom/autonavi/cvc/app/da/weather/WeatherFix$1;
.super Ljava/lang/Object;
.source "WeatherFix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/weather/WeatherFix;->getWeather(Ljava/lang/String;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cityCode:Ljava/lang/String;

.field final synthetic val$listener:Ljava/lang/Object;

.field final synthetic val$save:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherFix$1;->val$cityCode:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/autonavi/cvc/app/da/weather/WeatherFix$1;->val$save:Z

    iput-object p3, p0, Lcom/autonavi/cvc/app/da/weather/WeatherFix$1;->val$listener:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 46
    :try_start_3
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/weather/WeatherFix$1;->val$cityCode:Ljava/lang/String;

    # invokes: Lcom/autonavi/cvc/app/da/weather/WeatherFix;->resolve(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v3}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->access$000(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_48

    const/4 v4, 0x2

    .line 48
    aget-object v5, v3, v4

    const/4 v4, 0x3

    aget-object v6, v3, v4

    aget-object v4, v3, v1

    .line 49
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 48
    # invokes: Lcom/autonavi/cvc/app/da/weather/WeatherFix;->build(Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/String;
    invoke-static/range {v5 .. v10}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->access$100(Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 51
    const-string v4, "com.autonavi.cvc.app.da.weather.model.WeatherParser"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 52
    const-string v5, "getWeatherInfoResult"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 53
    iget-boolean v3, p0, Lcom/autonavi/cvc/app/da/weather/WeatherFix$1;->val$save:Z

    if-eqz v3, :cond_48

    .line 54
    # invokes: Lcom/autonavi/cvc/app/da/weather/WeatherFix;->persist(Ljava/lang/Object;)V
    invoke-static {v2}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->access$200(Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_47

    goto :goto_48

    :catchall_47
    nop

    :cond_48
    :goto_48
    if-nez v2, :cond_50

    .line 63
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/WeatherFix$1;->val$cityCode:Ljava/lang/String;

    # invokes: Lcom/autonavi/cvc/app/da/weather/WeatherFix;->cached(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v2}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->access$300(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :cond_50
    if-eqz v2, :cond_76

    .line 65
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/weather/WeatherFix$1;->val$listener:Ljava/lang/Object;

    if-nez v3, :cond_57

    goto :goto_76

    .line 69
    :cond_57
    :try_start_57
    const-string v3, "com.autonavi.cvc.app.da.weather.model.Weather"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 70
    const-string v4, "com.autonavi.cvc.app.da.weather.WeatherHelper$Listener"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 71
    const-string v5, "OnResult"

    new-array v6, v0, [Ljava/lang/Class;

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 72
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/weather/WeatherFix$1;->val$listener:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catchall {:try_start_57 .. :try_end_76} :catchall_76

    :catchall_76
    :cond_76
    :goto_76
    return-void
.end method
