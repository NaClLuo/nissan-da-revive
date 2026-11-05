.class final Lcom/autonavi/cvc/app/da/util/ShareMethod$1;
.super Ljava/lang/Object;
.source "ShareMethod.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/util/ShareMethod$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 389
    sget-object v0, Lcom/autonavi/cvc/app/da/util/ShareMethod;->builderMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/util/ShareMethod$1;->val$content:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    return-void
.end method
