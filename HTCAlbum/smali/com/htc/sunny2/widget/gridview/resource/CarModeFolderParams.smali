.class public Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
.source "CarModeFolderParams.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "bSupportImageOverlay"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;-><init>(Landroid/content/Context;Z)V

    .line 30
    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;->copy(Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;)V

    .line 35
    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;)Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;
    .locals 1
    .parameter "param"

    .prologue
    .line 19
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;-><init>(Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;)V

    return-object v0
.end method

.method public static spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;
    .locals 1
    .parameter "context"
    .parameter "bSupportImageOverlay"

    .prologue
    .line 14
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method


# virtual methods
.method public copy(Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    .line 40
    return-void
.end method

.method protected getFolderBGResId(Landroid/content/Context;Z)I
    .locals 1
    .parameter "context"
    .parameter "bSupportImageOverlay"

    .prologue
    .line 54
    const/high16 v0, 0x7f02

    return v0
.end method

.method protected getOverlayCount(Z)I
    .locals 1
    .parameter "bSupportImageOverlay"

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method protected getTextLayoutId()I
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f030039

    return v0
.end method

.method public layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    return-object v0
.end method

.method protected onNewLayoutGetter(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    .locals 1
    .parameter "context"
    .parameter "bSupportImageOverlay"

    .prologue
    .line 47
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderLayoutGetter;

    invoke-direct {v0, p1}, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderLayoutGetter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
