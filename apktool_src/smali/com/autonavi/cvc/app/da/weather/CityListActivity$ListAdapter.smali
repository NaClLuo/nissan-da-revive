.class Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/weather/CityListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/CityModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;


# direct methods
.method public constructor <init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/CityModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/weather/model/CityModel;>;"
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 123
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 124
    iput-object p3, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;->list:Ljava/util/List;

    .line 125
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v4}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$802(Lcom/autonavi/cvc/app/da/weather/CityListActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 126
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$902(Lcom/autonavi/cvc/app/da/weather/CityListActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 129
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/cvc/app/da/weather/model/CityModel;

    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->getNameSort()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "currentStr":Ljava/lang/String;
    add-int/lit8 v4, v1, -0x1

    if-ltz v4, :cond_1

    add-int/lit8 v4, v1, -0x1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/cvc/app/da/weather/model/CityModel;

    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->getNameSort()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "previewStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 132
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/cvc/app/da/weather/model/CityModel;

    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->getNameSort()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "name":Ljava/lang/String;
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$800(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$900(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)[Ljava/lang/String;

    move-result-object v4

    aput-object v2, v4, v1

    .line 128
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "previewStr":Ljava/lang/String;
    :cond_1
    const-string v3, " "

    goto :goto_1

    .line 138
    .end local v0    # "currentStr":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 152
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 158
    if-nez p2, :cond_0

    .line 159
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030005

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 160
    new-instance v1, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;

    invoke-direct {v1, p0, v5}, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;-><init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;)V

    .line 161
    .local v1, "holder":Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;
    const v3, 0x7f06001d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;->alpha:Landroid/widget/TextView;

    .line 162
    const v3, 0x7f06001f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 163
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    :goto_0
    iget-object v4, v1, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/cvc/app/da/weather/model/CityModel;

    invoke-virtual {v3}, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/cvc/app/da/weather/model/CityModel;

    invoke-virtual {v3}, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->getNameSort()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "currentStr":Ljava/lang/String;
    add-int/lit8 v3, p1, -0x1

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;->list:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/cvc/app/da/weather/model/CityModel;

    invoke-virtual {v3}, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->getNameSort()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "previewStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 172
    iget-object v3, v1, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;->alpha:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v3, v1, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;->alpha:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_2
    return-object p2

    .line 165
    .end local v0    # "currentStr":Ljava/lang/String;
    .end local v1    # "holder":Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;
    .end local v2    # "previewStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;
    goto :goto_0

    .line 170
    .restart local v0    # "currentStr":Ljava/lang/String;
    :cond_1
    const-string v2, " "

    goto :goto_1

    .line 175
    .restart local v2    # "previewStr":Ljava/lang/String;
    :cond_2
    iget-object v3, v1, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;->alpha:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
