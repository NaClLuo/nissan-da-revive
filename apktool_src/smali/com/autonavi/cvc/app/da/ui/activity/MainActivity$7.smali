.class Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$7;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$7;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->finish()V

    .line 462
    return-void
.end method
