.class Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$4;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 170
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$4;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 173
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$4;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-virtual {p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->finish()V

    return-void
.end method
