.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnItemVibrateListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemVibrateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnItemVibrateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnItemVibrateListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    return-void
.end method


# virtual methods
.method public onItemLongPressVibrateIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/SView;II)Z
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "index"
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 210
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$OnItemVibrateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    iget v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCurrentSenseMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
