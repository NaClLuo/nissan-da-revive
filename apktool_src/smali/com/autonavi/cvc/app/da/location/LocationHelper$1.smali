.class Lcom/autonavi/cvc/app/da/location/LocationHelper$1;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/location/LocationHelper;->getInverse(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

.field final synthetic val$dLat:D

.field final synthetic val$dLon:D

.field final synthetic val$locationInforaw:Lcom/autonavi/cvc/app/da/location/LocationInfo;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/location/LocationHelper;Lcom/autonavi/cvc/app/da/location/LocationInfo;DD)V
    .locals 1
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/location/LocationHelper;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    iput-object p2, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->val$locationInforaw:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    iput-wide p3, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->val$dLon:D

    iput-wide p5, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->val$dLat:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public OnSuccess(Ljava/lang/String;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 169
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "adminregion"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 171
    .local v1, "adminregion":Lorg/json/JSONObject;
    const-string v9, "address"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "address":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 173
    const-string v9, "citycode"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "citycode":Ljava/lang/String;
    const-string v9, "provcode"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "provcode":Ljava/lang/String;
    const-string v9, "cityname"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "cityname":Ljava/lang/String;
    const-string v9, "provname"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "provname":Ljava/lang/String;
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->val$locationInforaw:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    invoke-virtual {v9, v8}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->setProvname(Ljava/lang/String;)V

    .line 178
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->val$locationInforaw:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    invoke-virtual {v9, v3}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->setCityName(Ljava/lang/String;)V

    .line 179
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->val$locationInforaw:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    invoke-virtual {v9, v2}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->setCityCode(Ljava/lang/String;)V

    .line 180
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->val$locationInforaw:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    invoke-virtual {v9, v7}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->setProvCode(Ljava/lang/String;)V

    .line 181
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->val$locationInforaw:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    iget-wide v10, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->val$dLon:D

    invoke-virtual {v9, v10, v11}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->setLng(D)V

    .line 182
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->val$locationInforaw:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    iget-wide v10, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->val$dLat:D

    invoke-virtual {v9, v10, v11}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->setLat(D)V

    .line 183
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->val$locationInforaw:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    invoke-virtual {v9, v0}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->setCurrentAddress(Ljava/lang/String;)V

    .line 184
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    iget-object v10, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v10}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$100(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$002(Lcom/autonavi/cvc/app/da/location/LocationHelper;Lcom/autonavi/cvc/app/da/location/LocationInfo;)Lcom/autonavi/cvc/app/da/location/LocationInfo;

    .line 185
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    iget-object v10, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->val$locationInforaw:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    invoke-static {v9, v10}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$102(Lcom/autonavi/cvc/app/da/location/LocationHelper;Lcom/autonavi/cvc/app/da/location/LocationInfo;)Lcom/autonavi/cvc/app/da/location/LocationInfo;

    .line 186
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$200(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 187
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$200(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;

    .line 188
    .local v6, "l":Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;
    iget-object v10, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v10}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$100(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v10

    invoke-interface {v6, v10}, Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;->onLocationInfoChanged(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "adminregion":Lorg/json/JSONObject;
    .end local v2    # "citycode":Ljava/lang/String;
    .end local v3    # "cityname":Ljava/lang/String;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "l":Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;
    .end local v7    # "provcode":Ljava/lang/String;
    .end local v8    # "provname":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 208
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 212
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_0
    return-void

    .line 191
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "adminregion":Lorg/json/JSONObject;
    .restart local v2    # "citycode":Ljava/lang/String;
    .restart local v3    # "cityname":Ljava/lang/String;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "provcode":Ljava/lang/String;
    .restart local v8    # "provname":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$000(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$100(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 192
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$200(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 193
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$200(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;

    .line 194
    .restart local v6    # "l":Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;
    iget-object v10, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v10}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$100(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v10

    invoke-interface {v6, v10}, Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;->onCityChange(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V

    goto :goto_1

    .line 198
    .end local v6    # "l":Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;
    :cond_2
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$100(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$000(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$100(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->getCityCode()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v10}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$000(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->getCityCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 199
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$200(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 200
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$200(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;

    .line 201
    .restart local v6    # "l":Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;
    iget-object v10, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {v10}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->access$100(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v10

    invoke-interface {v6, v10}, Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;->onCityChange(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
