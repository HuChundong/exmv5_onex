.class Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$OnItemVibrateListener;
.super Ljava/lang/Object;
.source "SmartFolderScene.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemVibrateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$OnItemVibrateListener;->this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$OnItemVibrateListener;-><init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)V

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
    .line 653
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$OnItemVibrateListener;->this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->access$700(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene$OnItemVibrateListener;->this$0:Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->access$800(Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1, p3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    .line 655
    .local v0, mediaData:Lcom/htc/sunnyCore/IMediaData;
    instance-of v1, v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;

    if-eqz v1, :cond_0

    .line 656
    const/4 v1, 0x0

    .line 659
    .end local v0           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
