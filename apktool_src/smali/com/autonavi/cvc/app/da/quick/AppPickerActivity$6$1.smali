.class Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$1;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$1;->this$1:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;)I
    .registers 3

    .line 238
    iget-object p1, p1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->label:Ljava/lang/String;

    iget-object p2, p2, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 235
    check-cast p1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;

    check-cast p2, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$1;->compare(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;)I

    move-result p1

    return p1
.end method
