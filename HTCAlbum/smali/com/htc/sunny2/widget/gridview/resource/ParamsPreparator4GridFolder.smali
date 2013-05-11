.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
.source "ParamsPreparator4GridFolder.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IParamsPreparator4GridFolder;


# instance fields
.field private mEnableAntialias:Z

.field private mEnableOverlapImage:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;-><init>()V

    .line 9
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->mEnableOverlapImage:Z

    .line 10
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->mEnableAntialias:Z

    .line 17
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mMaxTextureCount:I

    .line 18
    return-void
.end method

.method public static spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public enableAntialias()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->mEnableAntialias:Z

    .line 48
    return-void
.end method

.method public enableOverlapImage()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->mEnableOverlapImage:Z

    .line 24
    return-void
.end method

.method public getCacheSet()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x65

    return v0
.end method

.method public getOverlapImageSize()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x3

    return v0
.end method

.method public isEnableAntialias()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->mEnableAntialias:Z

    return v0
.end method

.method public isEnableOverlayImage()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4GridFolder;->mEnableOverlapImage:Z

    return v0
.end method
