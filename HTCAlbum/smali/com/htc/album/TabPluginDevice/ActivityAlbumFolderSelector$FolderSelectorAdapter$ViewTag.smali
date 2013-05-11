.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
.super Ljava/lang/Object;
.source "ActivityAlbumFolderSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewTag"
.end annotation


# instance fields
.field public mIndex:I

.field public mIsVisible:Z

.field public mRotation:F

.field public mText:Ljava/lang/String;

.field public mViewBackground:Lcom/htc/widget/HtcListItemTileImage;

.field public mViewChkBx:Lcom/htc/widget/HtcCheckBox;

.field public mViewImage:Lcom/htc/widget/HtcListItemTileImage;

.field public mViewText:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 827
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->this$1:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewText:Lcom/htc/widget/HtcListItem2LineText;

    .line 833
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewBackground:Lcom/htc/widget/HtcListItemTileImage;

    .line 834
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewImage:Lcom/htc/widget/HtcListItemTileImage;

    .line 835
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mViewChkBx:Lcom/htc/widget/HtcCheckBox;

    .line 840
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mIndex:I

    .line 841
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mText:Ljava/lang/String;

    .line 842
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mIsVisible:Z

    .line 843
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mRotation:F

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 846
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mIndex:I

    .line 847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mText:Ljava/lang/String;

    .line 848
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->mIsVisible:Z

    .line 849
    return-void
.end method
