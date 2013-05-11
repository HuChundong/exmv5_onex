.class public Lcom/htc/album/modules/ui/widget/GalleryHostBar;
.super Lcom/htc/album/modules/ui/widget/BaseControlBar;
.source "GalleryHostBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HOST:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lcom/htc/album/modules/ui/widget/BaseControlBar;"
    }
.end annotation


# static fields
.field public static final STYLE_DEFAULT:I = 0x1

.field public static final STYLE_SEARCH:I = 0x3

.field public static final STYLE_SIMPLE:I = 0x2

.field public static final STYLE_TABLET:I = 0x4


# instance fields
.field private mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 46
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;-><init>(Landroid/content/Context;I)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;)V
    .locals 1
    .parameter "hostView"

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lcom/htc/album/modules/ui/widget/BaseControlBar;-><init>(Landroid/view/ViewGroup;)V

    .line 28
    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 42
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 43
    return-void
.end method

.method public static getHeaderPaddingOffset(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "style"

    .prologue
    .line 37
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PADDING_TOP_ITEMS_FOLDER:I

    return v0
.end method

.method public static getHeight(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "style"

    .prologue
    .line 33
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->ACTION_BAR_HEIGHT_DIMEN:I

    return v0
.end method


# virtual methods
.method public getHost()Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    .locals 1

    .prologue
    .line 58
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    return-object v0
.end method

.method public getMaxButtonCount()I
    .locals 1

    .prologue
    .line 53
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    .line 64
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    const/4 v0, 0x0

    return-object v0
.end method
