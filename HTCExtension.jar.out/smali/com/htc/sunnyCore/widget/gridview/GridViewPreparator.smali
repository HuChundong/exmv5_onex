.class public abstract Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;
.super Lcom/htc/sunnyCore/Preparator;
.source "GridViewPreparator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FLAG_CHECK_IMAGE_UPDATE:I = 0x1

.field public static final FLAG_CHECK_VIEW_UPDATE:I = 0x2

.field public static final FLAG_DEFAULT:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "name"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/Preparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getBindedMediaList()Lcom/htc/sunnyCore/IMediaList;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMediaListBinded()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public abstract iterate(J)V
.end method

.method public abstract notifyDataItemChanged(III)V
.end method

.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 33
    return-void
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 1
    .parameter "limitedTimeMillis"

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->iterate(J)V

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public refresh(ILcom/htc/sunnyCore/IMediaList;IZI)Ljava/util/List;
    .locals 1
    .parameter "mediaListIdx"
    .parameter "medialist"
    .parameter "priority"
    .parameter "isAutoReleaseTexture"
    .parameter "refreshFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunnyCore/IMediaList;",
            "IZI)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/Texture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract setColumnNumber(I)V
.end method
