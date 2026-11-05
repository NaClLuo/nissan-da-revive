.class final Lcom/autonavi/cvc/app/da/util/ShareMethod$3;
.super Ljava/lang/Object;
.source "ShareMethod.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adb:Landroid/app/AlertDialog$Builder;

.field final synthetic val$dh:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

.field final synthetic val$object:Ljava/lang/Object;

.field final synthetic val$whichDialog:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Landroid/app/AlertDialog$Builder;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/util/ShareMethod$3;->val$whichDialog:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/autonavi/cvc/app/da/util/ShareMethod$3;->val$dh:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    iput-object p3, p0, Lcom/autonavi/cvc/app/da/util/ShareMethod$3;->val$adb:Landroid/app/AlertDialog$Builder;

    iput-object p4, p0, Lcom/autonavi/cvc/app/da/util/ShareMethod$3;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/util/ShareMethod$3;->val$whichDialog:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/util/ShareMethod$3;->val$dh:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/util/ShareMethod$3;->val$adb:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/util/ShareMethod$3;->val$whichDialog:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/autonavi/cvc/app/da/util/ShareMethod$3;->val$object:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;->onClickAscertain(Landroid/app/AlertDialog$Builder;ILjava/lang/Object;)V

    .line 400
    :cond_0
    return-void
.end method
