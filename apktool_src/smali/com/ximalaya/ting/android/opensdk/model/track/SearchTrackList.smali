.class public Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;
.super Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
.source "SearchTrackList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
        ">;"
    }
.end annotation


# instance fields
.field private categoryId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_id"
    .end annotation
.end field

.field private tagName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->categoryId:I

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryId(I)V
    .locals 0
    .param p1, "categoryId"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->categoryId:I

    .line 20
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->tagName:Ljava/lang/String;

    .line 30
    return-void
.end method
