.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
.source "ParamsPreparator4CarMode.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;-><init>()V

    .line 13
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mDimension:I

    .line 14
    const/16 v0, 0x18

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->mMaxTextureCount:I

    .line 15
    return-void
.end method

.method public static spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator4CarMode;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getSpecialMode()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
