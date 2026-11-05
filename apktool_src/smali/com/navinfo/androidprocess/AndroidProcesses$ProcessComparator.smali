.class public final Lcom/navinfo/androidprocess/AndroidProcesses$ProcessComparator;
.super Ljava/lang/Object;
.source "AndroidProcesses.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/androidprocess/AndroidProcesses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/navinfo/androidprocess/models/AndroidProcess;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/navinfo/androidprocess/models/AndroidProcess;Lcom/navinfo/androidprocess/models/AndroidProcess;)I
    .locals 2
    .param p1, "p1"    # Lcom/navinfo/androidprocess/models/AndroidProcess;
    .param p2, "p2"    # Lcom/navinfo/androidprocess/models/AndroidProcess;

    .prologue
    .line 371
    iget-object v0, p1, Lcom/navinfo/androidprocess/models/AndroidProcess;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/navinfo/androidprocess/models/AndroidProcess;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 368
    check-cast p1, Lcom/navinfo/androidprocess/models/AndroidProcess;

    check-cast p2, Lcom/navinfo/androidprocess/models/AndroidProcess;

    invoke-virtual {p0, p1, p2}, Lcom/navinfo/androidprocess/AndroidProcesses$ProcessComparator;->compare(Lcom/navinfo/androidprocess/models/AndroidProcess;Lcom/navinfo/androidprocess/models/AndroidProcess;)I

    move-result v0

    return v0
.end method
