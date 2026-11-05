.class public Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;
.super Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$MyWebViewDownLoadListener;,
        Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$TestWebChromeClient;,
        Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$JsInterface;
    }
.end annotation


# static fields
.field private static final CALL:I = 0x12c

.field private static final FILECHOOSER_RESULTCODE:I = 0x12d


# instance fields
.field private appUrl:Ljava/lang/String;

.field dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field telUrl:Ljava/lang/String;

.field private webBack:Landroid/widget/Button;

.field private webExit:Landroid/widget/Button;

.field webView:Landroid/webkit/WebView;

.field ws:Landroid/webkit/WebSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;-><init>()V

    .line 71
    const-string v0, "tel:4008888888"

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->telUrl:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->appUrl:Ljava/lang/String;

    .line 402
    new-instance v0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$5;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$5;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    return-void
.end method

.method static synthetic access$102(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->createCameraIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->carConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->appUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->showToast()V

    return-void
.end method

.method private appChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 862
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->appChange(Landroid/content/Context;Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method private carConnected()Z
    .locals 1

    .prologue
    .line 866
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->isConnected()Z

    move-result v0

    return v0
.end method

.method private createCamcorderIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 854
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createCameraIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 791
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 792
    .local v0, "imageIntent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    return-object v0
.end method

.method private varargs createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 847
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    .local v0, "chooser":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 849
    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "File Chooser"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    return-object v0
.end method

.method private createDefaultOpenableIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 836
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 837
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->createCameraIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 841
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    .line 840
    invoke-direct {p0, v2}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->createChooserIntent([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 842
    .local v0, "chooser":Landroid/content/Intent;
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 843
    return-object v0
.end method

.method private createSoundRecorderIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 858
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private handleFile(Ljava/io/File;)Ljava/io/File;
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/high16 v11, 0x42b40000    # 90.0f

    .line 801
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 802
    .local v0, "dMetrics":Landroid/util/DisplayMetrics;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 803
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 804
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 805
    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 806
    .local v5, "imageWidth":I
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 809
    .local v4, "imageHeight":I
    int-to-float v9, v5

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v10, v11

    div-float/2addr v9, v10

    float-to-int v8, v9

    .line 810
    .local v8, "widthSample":I
    int-to-float v9, v4

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v10, v11

    div-float/2addr v9, v10

    float-to-int v3, v9

    .line 814
    .local v3, "heightSample":I
    if-ge v8, v3, :cond_1

    .end local v3    # "heightSample":I
    :goto_0
    iput v3, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 815
    const/4 v9, 0x0

    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 816
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 819
    .local v6, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    const-string v10, "upload.png"

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 821
    .local v2, "handleFile":Ljava/io/File;
    :try_start_0
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x32

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v9, v10, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 822
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "\u4fdd\u5b58\u56fe\u7247\u6210\u529f"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :cond_0
    :goto_1
    return-object v2

    .end local v2    # "handleFile":Ljava/io/File;
    .end local v6    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "heightSample":I
    :cond_1
    move v3, v8

    .line 814
    goto :goto_0

    .line 824
    .end local v3    # "heightSample":I
    .restart local v2    # "handleFile":Ljava/io/File;
    .restart local v6    # "newBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 825
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private showToast()V
    .locals 2

    .prologue
    .line 880
    const-string v0, "\u4e0d\u5141\u8bb8\u8df3\u8f6c\u5230\u975e\u5408\u4f5c\u5e94\u7528"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 882
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 758
    const/16 v4, 0x12d

    if-ne p1, v4, :cond_2

    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    .line 759
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v4, :cond_0

    .line 785
    :goto_0
    return-void

    .line 762
    :cond_0
    if-nez p3, :cond_3

    move-object v1, v3

    .line 763
    .local v1, "result":Landroid/net/Uri;
    :goto_1
    if-eqz v1, :cond_2

    .line 764
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 765
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v10

    .local v2, "columns":[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 768
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 769
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 770
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 771
    aget-object v4, v2, v10

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 772
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 773
    .local v9, "imgPath":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 774
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 775
    .local v8, "file":Ljava/io/File;
    invoke-direct {p0, v8}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->handleFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 776
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 777
    iput-object v3, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 780
    .end local v6    # "columnIndex":I
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "imgPath":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 784
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "result":Landroid/net/Uri;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 762
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 88
    invoke-super {p0, p1}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->setContentView(I)V

    .line 90
    const v1, 0x7f060056

    invoke-virtual {p0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webBack:Landroid/widget/Button;

    .line 91
    const v1, 0x7f060057

    invoke-virtual {p0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webExit:Landroid/widget/Button;

    .line 92
    const v1, 0x7f060055

    invoke-virtual {p0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    .line 93
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pkg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->appChanged(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->appUrl:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->appUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 100
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$MyWebViewDownLoadListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$MyWebViewDownLoadListener;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 103
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->ws:Landroid/webkit/WebSettings;

    .line 104
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->ws:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "database"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "dir":Ljava/lang/String;
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->ws:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 110
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->ws:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->ws:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 112
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->ws:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 113
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->ws:Landroid/webkit/WebSettings;

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 115
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->ws:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 117
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->ws:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->ws:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 120
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->ws:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 123
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->ws:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 124
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->ws:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 126
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$JsInterface;

    invoke-direct {v2, p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$JsInterface;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V

    const-string v3, "control"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webBack:Landroid/widget/Button;

    new-instance v2, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webExit:Landroid/widget/Button;

    new-instance v2, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$2;

    invoke-direct {v2, p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$2;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$3;

    new-instance v3, Landroid/webkit/WebChromeClient;

    invoke-direct {v3}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$3;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 198
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;

    invoke-direct {v2, p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 392
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 506
    .local v0, "view":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 507
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->removeAllViews()V

    .line 508
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 509
    invoke-super {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onDestroy()V

    .line 510
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 441
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    iget-object v3, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 443
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 445
    .local v1, "mWebBackForwardList":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v3

    if-lez v3, :cond_2

    .line 448
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 447
    invoke-virtual {v1, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    .line 448
    invoke-virtual {v3}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "historyUrl":Ljava/lang/String;
    const-string v3, "====\u300b"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5386\u53f2web====="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v3, "http://m.toutiao.com/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->finish()V

    .line 457
    :cond_0
    const-string v3, "http://m.tuniu.com/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->finish()V

    .line 460
    :cond_1
    const-string v3, "xui.ptlogin2.qq.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 461
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->finish()V

    .line 493
    .end local v0    # "historyUrl":Ljava/lang/String;
    .end local v1    # "mWebBackForwardList":Landroid/webkit/WebBackForwardList;
    :cond_2
    :goto_0
    return v2

    .line 465
    .restart local v0    # "historyUrl":Ljava/lang/String;
    .restart local v1    # "mWebBackForwardList":Landroid/webkit/WebBackForwardList;
    :cond_3
    const-string v3, "graph.qq.com/oauth2.0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 467
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->goBack()V

    .line 470
    const-string v3, "http://m.ctrip.com/webapp/favorite"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "https://secure.ctrip.com/webapp/wallet/"

    .line 471
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "http://m.ctrip.com/webapp/you/lifejourney/"

    .line 472
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 474
    :cond_4
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 473
    invoke-virtual {v1, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    .line 474
    invoke-virtual {v3}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 475
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 479
    :cond_5
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    const-string v4, "http://m.weibo.cn"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 486
    .end local v0    # "historyUrl":Ljava/lang/String;
    .end local v1    # "mWebBackForwardList":Landroid/webkit/WebBackForwardList;
    :cond_6
    const/16 v2, 0x52

    if-eq p1, v2, :cond_7

    const/16 v2, 0x18

    if-eq p1, v2, :cond_7

    const/16 v2, 0x19

    if-eq p1, v2, :cond_7

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_7

    .line 489
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->finish()V

    .line 493
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 435
    invoke-super {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onPause()V

    .line 436
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 499
    invoke-super {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onResume()V

    .line 500
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 515
    invoke-super {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onStop()V

    .line 516
    return-void
.end method
