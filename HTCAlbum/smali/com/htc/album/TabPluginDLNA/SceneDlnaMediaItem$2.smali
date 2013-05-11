.class Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$2;
.super Ljava/lang/Object;
.source "SceneDlnaMediaItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->showDialogNoConnection()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$2;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem.2;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$2;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 197
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$2;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem.2;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$2;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->access$000(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoWirelessConnection(Landroid/app/Activity;)V

    .line 198
    return-void
.end method
