.class public interface abstract annotation Landroid/arch/persistence/room/Relation;
.super Ljava/lang/Object;
.source "Relation.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/arch/persistence/room/Relation;
        entity = Ljava/lang/Object;
        projection = {}
    .end subannotation
.end annotation


# virtual methods
.method public abstract entity()Ljava/lang/Class;
.end method

.method public abstract entityColumn()Ljava/lang/String;
.end method

.method public abstract parentColumn()Ljava/lang/String;
.end method

.method public abstract projection()[Ljava/lang/String;
.end method
