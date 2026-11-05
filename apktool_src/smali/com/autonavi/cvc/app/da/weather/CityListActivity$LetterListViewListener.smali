.class Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;
.super Ljava/lang/Object;
.source "CityListActivity.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView$OnTouchingLetterChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/weather/CityListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LetterListViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;


# direct methods
.method private constructor <init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;
    .param p2, "x1"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;-><init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$800(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$800(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 213
    .local v0, "position":I
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$400(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 214
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$600(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v2}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$900(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$600(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$1200(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v2}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$1100(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Lcom/autonavi/cvc/app/da/weather/CityListActivity$OverlayThread;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$1200(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$LetterListViewListener;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v2}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$1100(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Lcom/autonavi/cvc/app/da/weather/CityListActivity$OverlayThread;

    move-result-object v2

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
