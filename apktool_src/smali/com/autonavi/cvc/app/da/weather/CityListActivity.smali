.class public Lcom/autonavi/cvc/app/da/weather/CityListActivity;
.super Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;
.source "CityListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/weather/CityListActivity$OverlayThread;,
        Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;,
        Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;,
        Lcom/autonavi/cvc/app/da/weather/CityListActivity$CityListOnItemClick;
    }
.end annotation


# static fields
.field private static REQUEST_CITY:I


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field private alphaIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private letterListView:Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;

.field private mCityLit:Landroid/widget/ListView;

.field private overlay:Landroid/widget/TextView;

.field private overlayThread:Lcom/autonavi/cvc/app/da/weather/CityListActivity$OverlayThread;

.field private sections:[Ljava/lang/String;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x384

    sput v0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->REQUEST_CITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Lcom/autonavi/cvc/app/da/weather/CityListActivity$OverlayThread;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->overlayThread:Lcom/autonavi/cvc/app/da/weather/CityListActivity$OverlayThread;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/cvc/app/da/weather/CityListActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->setAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->mCityLit:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->REQUEST_CITY:I

    return v0
.end method

.method static synthetic access$600(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->overlay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->alphaIndexer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/autonavi/cvc/app/da/weather/CityListActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->alphaIndexer:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->sections:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/autonavi/cvc/app/da/weather/CityListActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->sections:[Ljava/lang/String;

    return-object p1
.end method

.method private initOverlay()V
    .locals 7

    .prologue
    const/4 v1, -0x2

    .line 196
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 197
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030008

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->overlay:Landroid/widget/TextView;

    .line 198
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->overlay:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 203
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->windowManager:Landroid/view/WindowManager;

    .line 204
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->overlay:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    return-void
.end method

.method private setAdapter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/CityModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/weather/model/CityModel;>;"
    if-eqz p1, :cond_0

    .line 105
    new-instance v0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;

    invoke-direct {v0, p0, p0, p1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;-><init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->adapter:Landroid/widget/BaseAdapter;

    .line 106
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->mCityLit:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->setContentView(I)V

    .line 65
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->mCityLit:Landroid/widget/ListView;

    .line 66
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->letterListView:Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;

    .line 67
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->letterListView:Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;

    new-instance v2, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;

    invoke-direct {v2, p0, v3}, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;-><init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->setOnTouchingLetterChangedListener(Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView$OnTouchingLetterChangedListener;)V

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->alphaIndexer:Ljava/util/HashMap;

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->handler:Landroid/os/Handler;

    .line 70
    new-instance v1, Lcom/autonavi/cvc/app/da/weather/CityListActivity$OverlayThread;

    invoke-direct {v1, p0, v3}, Lcom/autonavi/cvc/app/da/weather/CityListActivity$OverlayThread;-><init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;)V

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->overlayThread:Lcom/autonavi/cvc/app/da/weather/CityListActivity$OverlayThread;

    .line 71
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->initOverlay()V

    .line 72
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v1

    const-class v2, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;

    .line 73
    .local v0, "cityActivityViewModel":Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;
    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;->getCitymodelsLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;

    invoke-direct {v2, p0}, Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;-><init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)V

    invoke-virtual {v1, p0, v2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 79
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->mCityLit:Landroid/widget/ListView;

    new-instance v2, Lcom/autonavi/cvc/app/da/weather/CityListActivity$CityListOnItemClick;

    invoke-direct {v2, p0, v3}, Lcom/autonavi/cvc/app/da/weather/CityListActivity$CityListOnItemClick;-><init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onDestroy()V

    .line 193
    return-void
.end method
