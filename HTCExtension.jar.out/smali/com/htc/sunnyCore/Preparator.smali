.class public abstract Lcom/htc/sunnyCore/Preparator;
.super Lcom/htc/sunnyCore/RenderThreadPreparation;
.source "Preparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/Preparator$UpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/sunnyCore/RenderThreadPreparation;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "name"

    .prologue
    .line 30
    .local p0, this:Lcom/htc/sunnyCore/Preparator;,"Lcom/htc/sunnyCore/Preparator<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/RenderThreadPreparation;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public abstract bind(ILcom/htc/sunnyCore/IMediaList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunnyCore/IMediaList",
            "<*>;I)V"
        }
    .end annotation
.end method

.method public abstract deInit()V
.end method

.method public abstract freeOutOfRange(III)V
.end method

.method public abstract get(IILandroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public abstract init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;)V
.end method

.method public abstract loadRange(IIIJ)V
.end method

.method public abstract notifyDataItemChanged(II)V
.end method

.method public abstract pausePreparator()V
.end method

.method public abstract refresh(ILcom/htc/sunnyCore/IMediaList;IZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunnyCore/IMediaList",
            "<*>;IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refresh(ILcom/htc/sunnyCore/IMediaList;IZI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunnyCore/IMediaList",
            "<*>;IZI)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;"
        }
    .end annotation
.end method

.method public abstract resetDecodeDirection()V
.end method

.method public abstract resumePreparator()V
.end method

.method public abstract setDecodeDirection(I)V
.end method

.method public setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V
    .locals 0
    .parameter "updateListener"

    .prologue
    .line 42
    .local p0, this:Lcom/htc/sunnyCore/Preparator;,"Lcom/htc/sunnyCore/Preparator<TT;>;"
    iput-object p1, p0, Lcom/htc/sunnyCore/Preparator;->mUpdateListener:Lcom/htc/sunnyCore/Preparator$UpdateListener;

    .line 43
    return-void
.end method

.method public abstract setVisibleRange(III)V
.end method

.method public abstract unbind(I)V
.end method
