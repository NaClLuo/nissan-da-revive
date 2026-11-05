.class Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->loadApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    :try_start_5
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 210
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 212
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 213
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 214
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 215
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_36

    goto :goto_25

    .line 218
    :cond_36
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_25

    .line 219
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-virtual {v6}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    goto :goto_25

    .line 222
    :cond_4f
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 224
    :cond_53
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 225
    new-instance v4, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;-><init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$1;)V

    .line 226
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->pkg:Ljava/lang/String;

    .line 227
    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_7c

    .line 228
    iget-object v5, v4, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->pkg:Ljava/lang/String;

    goto :goto_80

    :cond_7c
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_80
    iput-object v5, v4, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->label:Ljava/lang/String;
    :try_end_82
    .catchall {:try_start_5 .. :try_end_82} :catchall_94

    .line 230
    :try_start_82
    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v4, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_88

    .line 233
    :catchall_88
    :try_start_88
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 235
    :cond_8c
    new-instance v1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$1;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$1;-><init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_94
    .catchall {:try_start_88 .. :try_end_94} :catchall_94

    .line 243
    :catchall_94
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    new-instance v2, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$2;

    invoke-direct {v2, p0, v0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$2;-><init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
