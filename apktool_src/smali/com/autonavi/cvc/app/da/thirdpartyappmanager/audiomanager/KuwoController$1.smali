.class synthetic Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController$1;
.super Ljava/lang/Object;
.source "KuwoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$kuwo$autosdk$api$PlayerStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcn/kuwo/autosdk/api/PlayerStatus;->values()[Lcn/kuwo/autosdk/api/PlayerStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController$1;->$SwitchMap$cn$kuwo$autosdk$api$PlayerStatus:[I

    :try_start_0
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController$1;->$SwitchMap$cn$kuwo$autosdk$api$PlayerStatus:[I

    sget-object v1, Lcn/kuwo/autosdk/api/PlayerStatus;->PLAYING:Lcn/kuwo/autosdk/api/PlayerStatus;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/api/PlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
