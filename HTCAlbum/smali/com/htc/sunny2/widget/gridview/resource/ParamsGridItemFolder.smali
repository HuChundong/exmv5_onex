.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
.source "ParamsGridItemFolder.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GridItemFolderParams"


# instance fields
.field public mDateViewH:I

.field public mIsViewBackgroundDecode:Z

.field public mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

.field public mOverlapImages:I

.field public mResIdDateViewId:I

.field public mResIdSelector:I

.field public mResIdTextLayout:I

.field public mResIdTextViewId:I

.field public mSupportImageOverlay:Z

.field public mTextViewH:I

.field public mThumbH:I

.field public mThumbW:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    .line 16
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    .line 17
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    .line 18
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    .line 23
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    .line 30
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    .line 33
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "bSupportImageOverlay"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    .line 16
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    .line 17
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    .line 18
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    .line 23
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    .line 30
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    .line 33
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    .line 55
    iput-boolean p2, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    .line 57
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->getOverlayCount(Z)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    .line 58
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->onNewLayoutGetter(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    .line 60
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 61
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 63
    if-eqz p1, :cond_0

    .line 65
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Folder_Select(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    .line 66
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->getFolderBGResId(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->imageDimension()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    .line 70
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->imageDimension()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    .line 72
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->getTextLayoutId()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    .line 73
    const v0, 0x7f090042

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextViewId:I

    .line 74
    const v0, 0x7f090043

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdDateViewId:I

    .line 76
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->textHeightFirst()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    .line 77
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->textHeightSecond()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    .line 78
    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V
    .locals 2
    .parameter "param"

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    .line 16
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    .line 17
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    .line 18
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    .line 23
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    .line 30
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    .line 33
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    .line 127
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    .line 128
    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    .locals 1
    .parameter "param"

    .prologue
    .line 41
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;-><init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    return-object v0
.end method

.method public static spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    .locals 1
    .parameter "context"
    .parameter "bSupportImageOverlay"

    .prologue
    .line 37
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method


# virtual methods
.method public copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 136
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    .line 137
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    .line 138
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    .line 140
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    .line 141
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextViewId:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextViewId:I

    .line 142
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdDateViewId:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdDateViewId:I

    .line 143
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    .line 144
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    .line 146
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    .line 147
    iget-boolean v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    .line 148
    iget-object v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    .line 149
    iget-boolean v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    goto :goto_0
.end method

.method public enableViewBackgroundDecode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    .line 154
    return-void
.end method

.method protected getFolderBGResId(Landroid/content/Context;Z)I
    .locals 1
    .parameter "context"
    .parameter "bSupportImageOverlay"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, bgResId:I
    if-eqz p2, :cond_0

    .line 101
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryFolderSingleRest(Landroid/content/Context;)I

    move-result v0

    .line 108
    :goto_0
    return v0

    .line 105
    :cond_0
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryFolderRest(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method protected getOverlayCount(Z)I
    .locals 1
    .parameter "bSupportImageOverlay"

    .prologue
    .line 113
    const/4 v0, 0x1

    .line 114
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 115
    const/4 v0, 0x3

    .line 117
    :cond_0
    return v0
.end method

.method protected getTextLayoutId()I
    .locals 1

    .prologue
    .line 122
    const v0, 0x7f03001c

    return v0
.end method

.method public layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    return-object v0
.end method

.method protected onNewLayoutGetter(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    .locals 1
    .parameter "context"
    .parameter "bSupportImageOverlay"

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, layout:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    if-eqz p2, :cond_0

    .line 86
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolderOverlapImages;

    .end local v0           #layout:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolderOverlapImages;-><init>()V

    .line 93
    .restart local v0       #layout:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    :goto_0
    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;

    .end local v0           #layout:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;-><init>()V

    .restart local v0       #layout:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    goto :goto_0
.end method
