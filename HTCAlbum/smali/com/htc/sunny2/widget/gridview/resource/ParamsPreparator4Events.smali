.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
.source "ParamsPreparator4Events.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;


# static fields
.field public static final MAX_TEXTURE_COUNT:I = 0x18


# instance fields
.field private mEnableAntialias:Z

.field private mEnableOverlapImage:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->mEnableOverlapImage:Z

    .line 12
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->mEnableAntialias:Z

    .line 19
    const/16 v0, 0x18

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mMaxTextureCount:I

    .line 20
    return-void
.end method

.method public static spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;-><init>()V

    return-object v0
.end method


# virtual methods
.method public enableAntialias()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->mEnableAntialias:Z

    .line 44
    return-void
.end method

.method public enableOverlapImage()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public getOverlapImageSize()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x3

    return v0
.end method

.method public isEnableAntialias()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->mEnableAntialias:Z

    return v0
.end method

.method public isEnableOverlayImage()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4Events;->mEnableOverlapImage:Z

    return v0
.end method
